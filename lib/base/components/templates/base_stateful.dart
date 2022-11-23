import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:ridwan/base/components/components.dart';

abstract class BaseStateful<T extends StatefulWidget> extends State<T>
    with Diagnosticable
    implements BaseStateNormal {
  late GlobalKey<RefreshIndicatorState> refreshIndicatorKey;

  @override
  void initState() {
    super.initState();
    init();
    refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
    ErrorModal.context = context;
  }

  @override
  void dispose() {
    refreshIndicatorKey.currentState?.dispose();
    super.dispose();
  }

  ScaffoldAttribute buildAttribute();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: WillPopScope(
        onWillPop: onBackPressed,
        child: TMScaffold(
          attr: buildAttribute(),
          body: buildResponsiveLayout(),
          appBar: buildAppBar(context),
        ),
      ),
    );
  }

  Widget buildResponsiveLayout() {
    return ResponsiveBuilder(
      builder: (_, sizingInformation) {
        switch (sizingInformation.deviceScreenType) {
          case DeviceScreenType.mobile:
            return buildMobileLayout(
              context,
              sizingInformation,
            );
          case DeviceScreenType.tablet:
            return buildTabletLayout(
              context,
              sizingInformation,
            );
          case DeviceScreenType.desktop:
            return buildDesktopLayout(
              context,
              sizingInformation,
            );
          case DeviceScreenType.watch:
            return buildWatchLayout(
              context,
              sizingInformation,
            );
          default:
            return buildMobileLayout(
              context,
              sizingInformation,
            );
        }
      },
    );
  }
}
