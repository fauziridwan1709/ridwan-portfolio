import 'package:flutter/material.dart';
import 'package:ridwan/app.dart';
import 'package:ridwan/di/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const App());
}
