import 'package:flutter/material.dart';

class TORestartWidget extends StatefulWidget {
  const TORestartWidget({Key? key, required this.child}) : super(key: key);

  final Widget child;

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_TORestartWidgetState>()?.restartApp();
  }

  @override
  _TORestartWidgetState createState() => _TORestartWidgetState();
}

class _TORestartWidgetState extends State<TORestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}
