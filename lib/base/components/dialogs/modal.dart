import 'package:flutter/material.dart';

class BottomBarModal {
  static BuildContext? _dialogContext;

  // ignore: comment_references
  /// Showing bottom modal featuring [ModalBottomSheetRoute]
  /// Widget has to be shown through [builder].
  /// Adding parameter [isDismissible] to determine whether the bottom modal can be dismissed outside of modal or not.
  static void show(
    BuildContext context,
    Widget Function(BuildContext context) builder, {
    bool isDismissible = false,
    bool isDraggable = true,
  }) =>
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          _dialogContext = context;
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: builder(context),
          );
        },
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        isDismissible: isDismissible,
        enableDrag: isDraggable,
      );

  /// Show Dismiss
  static void dismiss({BuildContext? context}) {
    _dialogContext != null
        ? Navigator.pop(_dialogContext!)
        : Navigator.pop(context!);
  }
}
