import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../core/core.dart';

abstract class ExampleRemoteDataSource {
  /// Calls the https://${baseUrl}/${createExamplePost} endpoint
  ///
  /// Throws a [ServerException] for all error codes

  Future applyExampleItem(int value);
}

class ExampleRemoteDataSourceImpl implements ExampleRemoteDataSource {
  final Dio client;

  ExampleRemoteDataSourceImpl({required this.client});

  @override
  Future applyExampleItem(int value) async {
    final body = {"value": value};
    final response = await client.post(
      Uri(
        scheme: "https",
        // host: baseUrl,
        // path: exampleApplicationUrl,
      ).toString(),
      data: jsonEncode(body),
    );
    if (response.statusCode == 200) {
      return response;
    }
  }
}
