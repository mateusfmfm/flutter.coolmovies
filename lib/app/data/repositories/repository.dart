import 'package:coolmoviesfinal/app/core/platform/app_context.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Repository {
  var client = GraphQLProvider.of(AppContext.context).value;

  
}