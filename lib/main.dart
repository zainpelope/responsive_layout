import 'package:flutter/material.dart';
import 'package:responsive_layout/responsive/desktop_body.dart';
import 'package:responsive_layout/responsive/mobile_body.dart';
import 'package:responsive_layout/responsive/responsive_layout.dart';
import 'package:responsive_layout/responsive/tablet_body.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Layout',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const ResponsiveLayout(
        mobileBody: MobileScaffold(),
        tabletBody: TabletScaffold(),
        desktopBody: DesktopScaffold(),
      ),
    );
  }
}
