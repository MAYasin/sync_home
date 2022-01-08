import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sync_home/constants/style.dart';
import 'package:sync_home/ui/views/main_view.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Sync Home',
      theme: theme,
      home: MainView(),
      builder: (context, widget) => ResponsiveWrapper.builder(
        MainView(),
        maxWidth: 2460,
        minWidth: 480,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.resize(480, name: MOBILE),
          const ResponsiveBreakpoint.autoScaleDown(800, name: TABLET),
          const ResponsiveBreakpoint.autoScaleDown(1000, name: DESKTOP),
          const ResponsiveBreakpoint.autoScale(2460, name: '4K'),
        ],
        background: Container(color: Colors.blue),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
