const allMovieReviews = """
query {
  allMovieReviews {
    nodes {
      title
      body
      rating
      movieByMovieId {
        id
        title
        userByUserCreatorId {
          id
          name
        }
      }
      commentsByMovieReviewId {
        nodes {
          id
          title
          body
          userByUserId {
            id
            name
          }
        }
      }
    }
  }
}""";


