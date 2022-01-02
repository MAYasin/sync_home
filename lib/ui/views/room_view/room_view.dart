import 'package:flutter/material.dart';

import '../../shared/base_view.dart';

class RoomView extends StatelessWidget {
  const RoomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      bottomBar: BottomNavigationBar(
        items: [],
      ),
      title: Text('Room'),
      child: Text('Room'),
    );
  }
}
