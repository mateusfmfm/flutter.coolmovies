const allComments = """
query {
  allComments {
    nodes {
      title
      body
      movieReviewByMovieReviewId {
        id
        title
      }
      userByUserId {
        id
        name
      }
    }
    pageInfo {
      hasNextPage
    }
  }
}""";
