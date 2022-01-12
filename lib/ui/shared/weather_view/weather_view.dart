import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sync_home/ui/shared/base_view.dart';
import 'package:sync_home/ui/shared/weather_view/weather_view_controller.dart';

class WeatherView extends StatelessWidget {
  WeatherView({Key? key}) : super(key: key);
  final WeatherViewController weatherViewController =
      Get.put(WeatherViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WeatherViewController>(builder: (_) {
      return BaseView(
        centerTitle: true,
        title: const Text(
          'Weather',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        child: Column(
          children: <Widget>[
            const Text(
              'current weather:',
              style: TextStyle(fontSize: 20),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: _.weather.length,
              itemBuilder: (context, index) {
                return Text(_.weather[index].toString());
              },
            ),
            const Text(
              'Forecast:',
              style: TextStyle(fontSize: 20),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: _.forecast.length,
              itemBuilder: (context, index) {
                return Text(_.forecast[index].toString());
              },
            ),
          ],
        ),
      );
    });
  }
}
