import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:ridwan/base/components/components.dart';
import 'package:ridwan/feature/about/screen/contract.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends BaseStateful<AboutScreen>
    with AboutScreenContract {
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
    return const SizedBox();
  }

  @override
  Widget buildMobileLayout(BuildContext context, SizingInformation sizeInfo) {
    return const SizedBox();
  }

  @override
  Widget buildTabletLayout(BuildContext context, SizingInformation sizeInfo) {
    return const SizedBox();
  }

  @override
  Widget buildWatchLayout(BuildContext context, SizingInformation sizeInfo) {
    return const SizedBox();
  }

  @override
  void init() {}

  @override
  Future<bool> onBackPressed() async {
    return true;
  }
}
