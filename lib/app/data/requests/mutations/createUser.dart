String createUser(String name) {
  return """mutation {
  createUser(input: {user: {name: $name}}) {
    user {
      id
      name
    }
  }
}""";
}
