String deleteComment(String id) {
  return """mutation {
  deleteCommentById(input: {id: $id}) {
    deletedCommentId
  }
}""";
}
