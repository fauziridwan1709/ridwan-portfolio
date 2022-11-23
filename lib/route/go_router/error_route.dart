import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ridwan/base/components/pages/error_page.dart';

class ErrorRoute extends GoRouteData {
  const ErrorRoute();

  @override
  Widget build(BuildContext context) {
    return const ErrorPage();
  }
}
