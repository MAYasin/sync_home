import 'package:flutter/material.dart';

class BaseView extends StatelessWidget {
  const BaseView({Key? key, required this.child, required this.title})
      : super(key: key);

  final Widget child;
  final Widget title;

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
    );
  }
}
