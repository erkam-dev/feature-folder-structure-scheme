import 'package:flutter/material.dart';
import 'package:http_interceptor/http_interceptor.dart';

class CustomInterceptor implements InterceptorContract {
  @override
  Future<bool> shouldInterceptRequest() {
    return Future.value(true);
  }

  @override
  Future<bool> shouldInterceptResponse() {
    return Future.value(true);
  }

  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) {
    return Future.value(request);
  }

  @override
  Future<BaseResponse> interceptResponse({required BaseResponse response}) {
    switch (response.statusCode) {
      case 400:
      case 401:
      case 500:
        debugPrint(response.toString());
        break;
      default:
    }
    return Future.value(response);
  }
}
