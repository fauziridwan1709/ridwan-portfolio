import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ridwan/di/di.dart';
import 'package:ridwan/feature/about/blocs/about_bloc.dart';
import 'package:ridwan/feature/about/screen/ui.dart';

part 'route.g.dart';

@TypedGoRoute<AboutRoute>(
  path: '/about',
)
class AboutRoute extends GoRouteData {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AboutBloc>(),
      child: const AboutScreen(),
    );
  }
}
