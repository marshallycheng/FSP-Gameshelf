import React from 'react';
import { sendIcon, homeIcon, favoriteIcon, fullStar, halfStar, emptyStar } from '../logo';
import { Link } from 'react-router-dom';
import NavBarContainer from '../nav/nav_bar_container';
import GameReviewsContainer from './game_reviews/game_reviews_container';
import CreateReviewContainer from './game_reviews/create_review_form_container';

class GameShow extends React.Component {
  constructor(props){
    super(props);
    this.state = {
    };

    this.updateReviews = this.updateReviews.bind(this);
    this.toggleFavorite = this.toggleFavorite.bind(this);
  }

  componentDidMount() {
    this.props.fetchGame(this.props.gameId);
    this.props.fetchFavorites();
    window.scrollTo(0,0);
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.match.params.gameId !== nextProps.match.params.gameId) {
      this.props.fetchGame(nextProps.match.params.gameId);
    }
  }

  updateReviews() {
    this.setState();
  }

  calculateAverageRating() {
    let totalRating = 0;
    this.props.reviews.forEach(review => {
      totalRating += review.rating;
    });
    const averageRating = (totalRating / this.props.reviews.length);
    return Math.round(averageRating * 100) / 100;
  }

  calculateAverageStars(){
    const numStars = this.calculateAverageRating();
    const numArray = [1,2,3,4,5];
    let partialStar = false;
    const stars = <ul className="review-stars-list">

      {numArray.map((num) => {
        if (num <= numStars) {
          return <li key={`${num}`}>{fullStar}</li>;
        } else if (numStars >= 3.25 && !partialStar) {
          partialStar = true;
          return <li key={`${num}`}>{halfStar}</li>;
        } else {
          return <li key={`${num}`}>{emptyStar}</li>;
        }
      })}
    </ul>;
    return stars;
  }

  toggleFavorite(){
    if (this.props.game.favorited_user_ids.includes(this.props.currentUserId)) {
      this.props.deleteFavorite(this.props.favorite.id);
      this.setState({favoriteStatus: false});
    } else {
      this.props.createFavorite({user_id: this.props.currentUserId, game_id: this.props.game.id});
      this.setState({ favoriteStatus: true });
    }
  }

  render(){
    const { game, currentUserId } = this.props;
    
    let genres; 
    let favoriteText;
    if (game && game.favorited_user_ids) {
      favoriteText = game.favorited_user_ids.includes(currentUserId) ? 'Unfavorite' : 'Favorite'; 
      if (game.genres) {
        genres = game.genres.map(genre => {
          return <span className="genre-tag" key={genre}>{genre}</span>;
        });
      }
    } else {
      favoriteText = 'Favorite';
      genres = [];
    }

    if (!game) {
      return 'loading';
    } else {
    return (
      <div className="game-show-page">
        <Link to="/" className="home-button">{homeIcon} Home</Link>
        <div className="game-show-content">


          <div className="game-show-container">
            <div className="container-links">
              <button className="send-button">{sendIcon} Send</button>
              <button className="favorite-button" onClick={this.toggleFavorite}>{favoriteIcon} {favoriteText}</button>
            </div>
            <div className="container-content">
              <span className="game-show-title">
                {game.title}
              </span>
              <img className="game-show-image" src={`${game.image_url}`}/>
              <div className="game-details">
                <div className="game-stats">
                  <div className="game-stats-left">
                    <span className="game-score">
                      {this.calculateAverageStars()}
                      <div className="game-score-number">
                        {this.calculateAverageRating()}
                      </div>
                    </span>
                    <span className="game-release-date">
                      <span className="game-release-date-label">
                        Released on:
                      </span>
                      {game.release_date}
                    </span>
                  </div>
                  <div className="game-stats-right">
                    <span className="game-genres">
                      <span className="game-genres-label">
                        Genres:
                      </span>
                      {genres}
                    </span>
                    <span className="game-rating">
                      <span className="game-rating-label">
                        Rating:
                      </span>
                      {game.rating}
                    </span>
                  </div>


                </div>
                <CreateReviewContainer callback={this.updateReviews} game={game}/>
              </div>
              <div className="game-show-description">
                {game.description}
              </div>
            </div>
            <div className="game-reviews">
              <div className="review-header">
                Reviews
              </div>
              <div className="reviews-list-container">
                <GameReviewsContainer gameId={game.id}/>
              </div>
            </div>
          </div>
        </div>
      </div>
    );}
  }
}

export default GameShow;
