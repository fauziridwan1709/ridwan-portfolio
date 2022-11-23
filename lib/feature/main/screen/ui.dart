import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:ridwan/base/components/components.dart';
import 'package:ridwan/feature/main/screen/contract.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends BaseStateful<MainScreen>
    with MainScreenContract {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return null;
  }

  @override
  ScaffoldAttribute buildAttribute() {
    return ScaffoldAttribute();
  }

  @override
  Widget buildDesktopLayout(BuildContext context, SizingInformation sizeInfo) {
    return SizedBox();
  }

  @override
  Widget buildMobileLayout(BuildContext context, SizingInformation sizeInfo) {
    return SizedBox();
  }

  @override
  Widget buildTabletLayout(BuildContext context, SizingInformation sizeInfo) {
    return SizedBox();
  }

  @override
  Widget buildWatchLayout(BuildContext context, SizingInformation sizeInfo) {
    return SizedBox();
  }

  @override
  void init() {}

  @override
  Future<bool> onBackPressed() async {
    return true;
  }
}
