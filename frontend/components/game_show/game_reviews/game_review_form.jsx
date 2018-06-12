import React from 'react';
import { withRouter } from 'react-router-dom';
import { emptyStar, fullStar } from '../../logo';

class GameReviewForm extends React.Component {
  constructor(props) {
    super(props);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.updateRating = this.updateRating.bind(this);
    // this.props.callback = this.props.callback.bind(this);
    this.state = this.props.review;
  }

  update(field) {
    return (e) => {
      this.setState({[field]: e.target.value});
    };
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.processForm(this.state);
    this.setState({ body: '' });
  }

  updateRating(num) {
    this.setState({rating:num});
  }

  render() {
    const header = (this.props.submitButton === "Submit Review") ? <h3>Review this game!</h3> : null;
    const placeholderText = (this.props.errors.length)
     ? "You've already reviewed this game. Please edit or delete your previous review."
     : "Write a review...";

    return (
      <div className="review-form-container">
        <form onSubmit={this.handleSubmit}>
          {header}

          <fieldset className="review-form-rating">
            <input type="radio" id="star5" name="rating" value="5"  />
            <label className = "full" htmlFor="star5" title="Awesome - 5 stars" onClick={() => this.updateRating(5)}></label>
            <input type="radio" id="star4" name="rating" value="4"/>
            <label className = "full" htmlFor="star4" title="Pretty good - 4 stars" onClick={() => this.updateRating(4)}></label>
            <input type="radio" id="star3" name="rating" value="3" />
            <label className = "full" htmlFor="star3" title="Meh - 3 stars" onClick={() => this.updateRating(3)}></label>
            <input type="radio" id="star2" name="rating" value="2"/>
            <label className = "full" htmlFor="star2" title="Kinda bad - 2 stars" onClick={() => this.updateRating(2)}></label>
            <input type="radio" id="star1" name="rating" value="1"/>
            <label className = "full" htmlFor="star1" title="Sucks big time - 1 star" onClick={() => this.updateRating(1)}></label>
          </fieldset>

          <textarea
            className="review-form-body"
            placeholder={placeholderText}
            value={this.state.body}
            onChange={this.update('body')}
          />

          <input
            className="review-form-button"
            type="submit"
            value={this.props.submitButton} />

        </form>
      </div>
    );
  }
}

export default withRouter(GameReviewForm);
