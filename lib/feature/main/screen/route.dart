import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ridwan/di/di.dart';
import 'package:ridwan/feature/main/blocs/main_bloc.dart';
import 'package:ridwan/feature/main/screen/ui.dart';

@TypedGoRoute<MainRoute>(
  path: '/',
)
class MainRoute extends GoRouteData {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MainBloc>(),
      child: const MainScreen(),
    );
  }
}
