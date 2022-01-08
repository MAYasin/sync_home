import 'package:flutter/material.dart';
import 'package:sync_home/ui/shared/base_view.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BaseView(
      centerTitle: true,
      title: Text(
        'Weather',
        style: TextStyle(
          color: Colors.black,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
      ),
      child: Text(
        'weather',
      ),
    );
  }
}
