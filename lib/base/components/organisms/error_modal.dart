// ignore_for_file: unnecessary_getters_setters

import 'package:flutter/material.dart';

abstract class ErrorModal {
  const ErrorModal();

  static BuildContext? _buildContext;

  static BuildContext? get context => _buildContext;
  static set context(BuildContext? context) => _buildContext = context;

  static bool get hasContext => _buildContext != null;

  Future<T?> show<T>({BuildContext? context});
}
