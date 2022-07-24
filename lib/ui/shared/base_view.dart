import 'package:flutter/material.dart';

class BaseView extends StatelessWidget {
  const BaseView(
      {Key? key,
      required this.child,
      this.title,
      this.bottomBar,
      this.floatingActionButton,
      this.floatingActionButtonLocation,
      this.centerTitle = false,
      this.backgroundColor = Colors.white,
      this.padding = 20.0})
      : super(key: key);

  final Widget child;
  final Widget? title;
  final Widget? bottomBar;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final bool centerTitle;
  final Color backgroundColor;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: SizedBox(
                width: MediaQuery.of(context).size.width, child: child),
          ),
        ),
      ),
      backgroundColor: backgroundColor,
      bottomNavigationBar: bottomBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 0.0,
        centerTitle: centerTitle,
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: title,
        ),
      ),
    );
  }
}
