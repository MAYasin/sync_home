import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sync_home/shared/services/ui_services/weather_ui_service.dart';
import 'package:sync_home/ui/components/weather_card/weather_card_controller.dart';
import 'package:sync_home/ui/shared/weather_view/weather_view.dart';

class WeatherCard extends StatelessWidget {
  WeatherCard({
    Key? key,
  }) : super(key: key);

  final WeatherCardController weatherCardController =
      Get.put(WeatherCardController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WeatherCardController>(builder: (_) {
      return GestureDetector(
        onTap: () {
          Get.to(
            const WeatherView(),
            transition: Transition.rightToLeft,
          );
        },
        child: Card(
          margin: const EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.grey[200],
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: _.getWeather().isEmpty
                ? const LoadingWeatherScreen()
                : Row(
                    children: [
                      Image.asset(
                        _.getWeather().isNotEmpty
                            ? WeatherUIService.getWeather(
                                _.getWeather().first.weatherIcon.toString())
                            : 'assets/icon/weather/mist.png',
                        width: 120,
                        height: 120,
                        scale: 0.5,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.location_pin,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                _.getWeather().isNotEmpty
                                    ? _.getWeather().first.areaName.toString() +
                                        ', ' +
                                        _.getWeather().first.country.toString()
                                    : 'error',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _.getWeather().isNotEmpty
                                    ? _
                                        .getWeather()
                                        .first
                                        .temperature!
                                        .celsius!
                                        .toStringAsFixed(1)
                                        .toString()
                                    : 'error',
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '°C',
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 40),
                              Column(
                                children: [
                                  Text(
                                    'Avg. Inside',
                                    style: TextStyle(
                                      color: Colors.grey[900],
                                      fontSize: 12,
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        '19',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '°C',
                                        style: TextStyle(
                                          color: Colors.grey[700],
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Card(
                            margin: const EdgeInsets.all(0),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            color: Colors.lightBlue[600],
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                top: 12,
                                right: 20,
                                bottom: 12,
                              ),
                              child: Text(
                                _.getWeather().isNotEmpty
                                    ? _
                                            .getWeather()
                                            .first
                                            .weatherMain
                                            .toString() +
                                        ', ' +
                                        _
                                            .getWeather()
                                            .first
                                            .weatherDescription
                                            .toString()
                                    : 'error',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
          ),
        ),
      );
    });
  }
}

class LoadingWeatherScreen extends StatelessWidget {
  const LoadingWeatherScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.white54,
      highlightColor: Colors.grey[200]!,
      child: Row(
        children: [
          SizedBox(
            width: 120,
            child: Container(
              margin: const EdgeInsets.all(0),
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 250,
                    child: Container(
                      margin: const EdgeInsets.all(0),
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 120,
                    child: Container(
                      margin: const EdgeInsets.all(0),
                      height: 35,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 40),
                  Column(
                    children: [
                      SizedBox(
                        width: 50,
                        child: Container(
                          margin: const EdgeInsets.all(0),
                          height: 5,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 80,
                            child: Container(
                              margin: const EdgeInsets.all(0),
                              height: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(40),
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 200,
                child: Container(
                  margin: const EdgeInsets.all(0),
                  height: 42,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.black,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      top: 12,
                      right: 20,
                      bottom: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
