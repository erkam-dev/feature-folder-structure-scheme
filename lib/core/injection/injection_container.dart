import 'package:get_it/get_it.dart';
import 'package:http_interceptor/http_interceptor.dart';

import '../core.dart';

final sl = GetIt.instance;

@override
Future<void> init() async {
  // Core
  await initCore();

  // Features
  initExampleFeatures();
}

initCore() async => sl.registerLazySingleton<Client>(
    () => InterceptedClient.build(interceptors: [CustomInterceptor()]));
