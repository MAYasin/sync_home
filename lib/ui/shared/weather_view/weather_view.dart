import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sync_home/ui/shared/base_view.dart';
import 'package:sync_home/ui/shared/weather_view/weather_view_controller.dart';

class WeatherView extends StatefulWidget {
  const WeatherView({Key? key}) : super(key: key);

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  final WeatherViewController _weatherViewController =
      Get.put(WeatherViewController());

  @override
  Widget build(BuildContext context) {
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
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          const Text(
            'current weather:',
            style: TextStyle(fontSize: 20),
          ),
          Obx(
            () => ListView.builder(
              shrinkWrap: true,
              itemCount: _weatherViewController.weather.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Text(_weatherViewController.weather[index].toString()),
                );
              },
            ),
          ),
          const Text(
            'Forecast:',
            style: TextStyle(fontSize: 20),
          ),
          Obx(
            () => ListView.builder(
              shrinkWrap: true,
              itemCount: _weatherViewController.forecast.length,
              itemBuilder: (context, index) {
                return Card(
                  child:
                      Text(_weatherViewController.forecast[index].toString()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget contentDownloading() {
  return Container(
    margin: const EdgeInsets.all(25),
    child: Column(children: [
      const Text(
        'Fetching Weather...',
        style: TextStyle(fontSize: 20),
      ),
      Container(
          margin: const EdgeInsets.only(top: 50),
          child:
              const Center(child: CircularProgressIndicator(strokeWidth: 10)))
    ]),
  );
}

Widget contentNotDownloaded() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Text(
          'Press the button to download the Weather forecast',
        ),
      ],
    ),
  );
}
