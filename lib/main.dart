import 'package:flutter/material.dart';
import 'package:sync_home/constants/style.dart';
import 'package:sync_home/ui/views/home_view/home_view.dart';
import 'package:sync_home/ui/views/room_view/room_view.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() {
  runApp(
    MaterialApp(
      title: 'Sync Home',
      theme: theme,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeView(),
        '/room': (context) => const RoomView(),
      },
    ),
  );
}
