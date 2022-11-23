import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ridwan/route/go_router/error_route.dart';

part 'router.g.dart';

GoRouter goRouter = GoRouter(
  routes: $appRoutes,
  errorBuilder: (c, s) => const ErrorRoute().build(c),
);
