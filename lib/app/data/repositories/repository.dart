import 'package:coolmoviesfinal/app/core/platform/network_utils.dart';
import 'package:coolmoviesfinal/app/data/models/user_model.dart';
import 'package:coolmoviesfinal/app/data/requests/export_requests.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Repository {
  var client = NetworkUtils().globalClient!;

  createUser(String name) async {
    try {
      Map<String, dynamic>? _data = {};
      final QueryResult result = await client.query(QueryOptions(
        document: gql(createUser(name)),
      ));

      if (result.hasException) {
        print(result.exception.toString());
      }

      if (result.data != null) {
        _data = result.data!['allMovies'];
      }
    } catch (e) {
      print('$e');
    }
  }

  fetchAllUsers(int first) async {
    Map<String, dynamic>? _data = {};
    List<UserModel> _users = [];
    try {
      final QueryResult result = await client.query(QueryOptions(
        document: gql(allUsers(first)),
      ));

      if (result.hasException) {
        print(result.exception.toString());
      }

      if (result.data != null) {
        _data = result.data!['allUsers']["nodes"];
        _data!.forEach((key, value) {
          _users.add(UserModel(id: key, name: value));
        });
      }
      return _users;
    } catch (e) {
      print('$e');
      return;
    }
  }
}
