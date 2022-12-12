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
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(60),
      child: OTopNavigation(
        labels: const [
          'Home',
          'Works',
          'About',
          'Projects',
          'Services',
        ],
        onChange: (int index) {},
      ),
    );
  }

  @override
  ScaffoldAttribute buildAttribute() {
    return ScaffoldAttribute();
  }

  @override
  Widget buildDesktopLayout(BuildContext context, SizingInformation sizeInfo) {
    return Container(
      color: Colors.red,
    );
  }

  @override
  Widget buildMobileLayout(BuildContext context, SizingInformation sizeInfo) {
    return Container(
      color: Colors.red,
    );
  }

  @override
  Widget buildTabletLayout(BuildContext context, SizingInformation sizeInfo) {
    return Container(
      color: Colors.red,
    );
  }

  @override
  Widget buildWatchLayout(BuildContext context, SizingInformation sizeInfo) {
    return Container(
      color: Colors.red,
    );
  }

  @override
  void init() {}

  @override
  Future<bool> onBackPressed() async {
    return true;
  }
}
