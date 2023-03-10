import 'package:flutter/cupertino.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;

  const ResponsiveLayout(
      {Key? key,
      required this.mobileBody,
      required this.tabletBody,
      required this.desktopBody})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobileBody;
        } else if (constraints.maxHeight < 1100) {
          return tabletBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
