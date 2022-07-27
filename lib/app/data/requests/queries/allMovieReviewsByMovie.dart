String allMovieReviewsByMovie(String movieId) {
  return """{
  allMovieReviews(
    filter: {movieId: {equalTo: $movieId}}
  ) {
    nodes {
      title
      body
      rating
      movieByMovieId {
        title
      }
    }
  }
}""";
}
