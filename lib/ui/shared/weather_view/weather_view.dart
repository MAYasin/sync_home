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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    'assets/icon/weather/clear-day.png',
                    height: 260,
                    width: 260,
                    scale: 0.3,
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * (60 / 100),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: _.weather.length,
                        itemBuilder: (context, index) {
                          return SizedBox(
                              child: Column(
                            children: [
                              Text(_.weather[index].toString()),
                              Text(
                                _.getWeather(index).areaName.toString() +
                                    ', ' +
                                    _.getWeather(index).country.toString(),
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                _.getWeather(index).date!.toIso8601String() +
                                    ', ' +
                                    _.getWeather(index).country.toString(),
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ));
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),

            /* 
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
            ), */
          ],
        ),
      );
    });
  }
}
