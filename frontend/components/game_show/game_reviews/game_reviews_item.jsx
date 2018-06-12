import React from 'react';
import EditReviewFormContainer from './edit_review_form_container';
import { fullStar, emptyStar } from '../../logo';

class GameReviewsItem extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      showComponent: false
    };
    this.handleDelete = this.handleDelete.bind(this);
    this.displayEditForm = this.displayEditForm.bind(this);
  }

  handleDelete(){
    this.props.deleteReview(this.props.review.id);
  }

  displayEditForm(){
    if (this.state.showComponent === true) {
      this.setState({showComponent: false});
    } else {
      this.setState({showComponent: true});
    }
  }

  starRating(){
    let numStars = this.props.review.rating;
    const numArray = [0,1,2,3,4];
    const stars = <ul className="review-stars-list">
      {numArray.map((num) => {
        if (num < numStars) {
          return <li key={`${num}`}>{fullStar}</li>;
        } else {
          return <li key={`${num}`}>{emptyStar}</li>;
        }
      })}
    </ul>;
    return stars;
  }

  render(){
    const { review, reviewer } = this.props;


    const reviewerUsername = (reviewer) ? reviewer.username : "Loading";
    debugger
    const reviewButtons = (review && window.currentUser && review.user_id === window.currentUser.id) ?
    (<div className="review-buttons">
      <button onClick={this.displayEditForm} className="review-edit-button"> Edit </button>
      <button onClick={this.handleDelete} className="review-delete-button"> Delete </button>
      {this.state.showComponent ? <EditReviewFormContainer review={review}/> : null }
    </div>) : <div> </div>;

    const componentContent = (this.state.showComponent) ?
      <li className="game-review-item"><button onClick={this.displayEditForm} className="review-edit-button review-edit-close-button">Close</button><EditReviewFormContainer review={review}/></li> :
        (<li className="game-review-item">

            <div className="review-info">

            <div className="review-info-left">
              <div className="review-info-username">
                {reviewerUsername}
              </div>

                gave it

              <div className="review-info-rating">
                {this.starRating()}
              </div>
              {reviewButtons}
            </div>


            <div className="review-info-date">
              {(new Date(review.created_at).toDateString())}
            </div>

          </div>
          <div className="review-content">
            {review.body}
          </div>
        </li>);
    return review ? (
      <div>{componentContent}</div>
    ) : <div></div>;
  }
}

export default GameReviewsItem;
