import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

abstract class BaseStateNormal {
  void init();

  PreferredSizeWidget? buildAppBar(BuildContext context);

  Widget buildWatchLayout(
    BuildContext context,
    SizingInformation sizeInfo,
  );

  Widget buildMobileLayout(
    BuildContext context,
    SizingInformation sizeInfo,
  );

  Widget buildTabletLayout(
    BuildContext context,
    SizingInformation sizeInfo,
  );

  Widget buildDesktopLayout(
    BuildContext context,
    SizingInformation sizeInfo,
  );

  @protected
  Future<bool> onBackPressed();
}
