String createComment(
    String title, String body, String userId, String movieReviewId) {
  return """mutation {
  createComment(input: {
    comment: {
      title: $title,
      body: $body,
      userId: $userId,
      movieReviewId: $movieReviewId}}) {
    comment {
      id
      title
      body
      userByUserId {
        id
        name
      }
      movieReviewByMovieReviewId {
        id
        title
        movieByMovieId {
          title
        }
      }
    }
  }
}""";
}
