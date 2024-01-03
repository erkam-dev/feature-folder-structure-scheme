import 'package:example/app/app_config.dart';
import 'package:example/core/core.dart';
import 'package:flutter/material.dart';

void main() async {
  ErrorWidget.builder = (FlutterErrorDetails details) =>
      const Text("Something Went Wrong!").pad16().card();
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const App());
}
