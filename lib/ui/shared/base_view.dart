import 'package:flutter/material.dart';

class BaseView extends StatelessWidget {
  const BaseView(
      {Key? key,
      required this.child,
      this.title,
      this.bottomBar,
      this.floatingActionButton,
      this.floatingActionButtonLocation})
      : super(key: key);

  final Widget child;
  final Widget? title;
  final Widget? bottomBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: child),
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: bottomBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 0.0,
        title: title,
      ),
    );
  }
}
