import 'package:flutter/material.dart';
import 'package:ridwan/route/go_router/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      title: 'Ridwan portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
