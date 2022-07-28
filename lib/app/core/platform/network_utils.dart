import 'dart:io';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class NetworkUtils {
  GraphQLClient? globalClient;
  ValueNotifier<GraphQLClient> getClient() {
    final HttpLink httpLink = HttpLink(
      Platform.isAndroid
          ? 'http://10.0.2.2:5001/graphql'
          : 'http://localhost:5001/graphql',
    );

    final AuthLink authLink = AuthLink(
      getToken: () async => 'Bearer <YOUR_PERSONAL_ACCESS_TOKEN>',
    );

    final Link link = authLink.concat(httpLink);

    ValueNotifier<GraphQLClient> client = ValueNotifier(
      GraphQLClient(
        link: link,
        cache: GraphQLCache(store: HiveStore()),
      ),
    );

    globalClient = client.value;

    return client;
  }
}
