String movieReviewById(String id) {
  return """query {
  movieReviewById(id: $id) {
    body
    id
    movieByMovieId {
      id
      releaseDate
      title
      movieDirectorByMovieDirectorId {
        age
        id
        name
      }
    }
    rating
    nodeId
    title
    userByUserReviewerId {
      name
      id
    }
  }
}""";
}
