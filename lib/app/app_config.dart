import 'package:example/features/example/example.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/core.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => sl<ExampleBloc>())],
      child: ValueListenableBuilder(
        valueListenable: themeMode,
        builder: (context, value, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          scrollBehavior: const CupertinoScrollBehavior(),
          themeMode: value,
          theme: lightTheme(),
          darkTheme: darkTheme(),
          home: Container(),
        ),
      ),
    );
  }
}
