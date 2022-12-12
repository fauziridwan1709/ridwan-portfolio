import 'package:flutter/material.dart';
import 'package:ridwan/base/colors.dart';

class TMScaffold extends Scaffold {
  TMScaffold({
    ScaffoldAttribute? attr,
    PreferredSizeWidget? appBar,
    Widget? body,
  }) : super(
          key: attr!.scaffoldKey,
          resizeToAvoidBottomInset: attr.isResizable,
          backgroundColor: attr.backgroundColor,
          floatingActionButton: attr.fab,
          floatingActionButtonLocation: attr.fabLocation,
          appBar: appBar,
          body: body,
          bottomNavigationBar: attr.bottomNavigation,
        );
}

/// Data from [TMScaffold] accessible from its children.
class ScaffoldAttribute {
  /// Creates a [ScaffoldAttribute].
  ScaffoldAttribute({
    this.scaffoldKey,
    this.backgroundColor = TBColors.tbWhite,
    this.isResizable = true,
    this.fabLocation,
    this.fab,
    this.bottomNavigation,
  });

  GlobalKey<ScaffoldState>? scaffoldKey;
  Color? backgroundColor;

  /// Whether layout is interactive to resize.
  ///
  /// Defaults to true.
  bool isResizable;
  FloatingActionButtonLocation? fabLocation;
  Widget? fab;
  Widget? bottomNavigation;
}
