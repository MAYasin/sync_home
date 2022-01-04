import 'package:flutter/material.dart';
import 'package:sync_home/constants/style.dart';
import 'package:sync_home/ui/views/main_view.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Sync Home',
      theme: theme,
      home: const MainView(),
    ),
  );
}
