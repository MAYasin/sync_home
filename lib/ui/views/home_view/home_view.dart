import 'package:flutter/material.dart';

import '../../shared/base_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      title: const Text('Main'),
      bottomBar: BottomNavigationBar(items: [],),
      child: Column(
        children: [
          const Text('Main'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/room');
            },
            child: const Text('Launch screen'),
          ),
        ],
      ),
    );
  }
}
