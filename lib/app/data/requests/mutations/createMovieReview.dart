String createMovieReview(String title, String body, int rating, String movieId,
    String userReviewId) {
  return """mutation {
  createMovieReview(input: {
    movieReview: {
      title: $title,
      body: $body,
      rating: $rating,
      movieId: $movieId,
      userReviewerId: $userReviewId
    }})
  {
    movieReview {
      id
      title
      body
      rating
      movieByMovieId {
        title
      }
      userByUserReviewerId {
        name
      }
    }
  }
}""";
}
