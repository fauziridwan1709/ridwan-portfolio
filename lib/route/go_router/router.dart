import 'package:go_router/go_router.dart';
import 'package:ridwan/feature/about/screen/route.dart';
import 'package:ridwan/feature/main/screen/route.dart';
import 'package:ridwan/route/go_router/error_route.dart';

GoRouter goRouter = GoRouter(
  routes: [
    $mainRoute,
    $aboutRoute,
  ],
  errorBuilder: (c, s) => const ErrorRoute().build(c),
);
