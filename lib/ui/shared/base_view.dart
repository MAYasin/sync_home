import 'package:flutter/material.dart';

class BaseView extends StatelessWidget {
  const BaseView(
      {Key? key,
      required this.child,
      required this.title,
      required this.bottomBar})
      : super(key: key);

  final Widget child;
  final Widget title;
  final Widget bottomBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: child,
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: title,
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      bottomNavigationBar: bottomBar,
    );
  }
}
