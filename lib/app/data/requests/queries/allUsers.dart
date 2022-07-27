String allUsers(int first) {
  return """query {
  allUsers(first: $first) {
    nodes {
      id
      name
    }
    pageInfo {
      hasNextPage
      hasPreviousPage
    }
  }
}""";
}
