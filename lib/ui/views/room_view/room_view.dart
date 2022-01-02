import 'package:flutter/material.dart';

import '../base_view.dart';

class RoomView extends StatelessWidget {
  const RoomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BaseView(
      title: Text('Room'),
      child: Text('Room'),
    );
  }
}
