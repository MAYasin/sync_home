import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sync_home/ui/components/weather_card/weather_card_controller.dart';
import 'package:sync_home/ui/shared/weather_view/weather_view.dart';

class WeatherCard extends StatelessWidget {
  WeatherCard({
    Key? key,
  }) : super(key: key);

  final WeatherCardController _weatherCardController =
      Get.put(WeatherCardController());

  @override
  Widget build(BuildContext context) {
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
          child: Row(
            children: [
              Image.asset(
                'assets/icon/weather/wind.png',
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
                      Obx(
                        () => Text(
                          _weatherCardController.getWeather().isNotEmpty
                              ? _weatherCardController
                                      .getWeather()
                                      .first
                                      .areaName
                                      .toString() +
                                  ', ' +
                                  _weatherCardController
                                      .getWeather()
                                      .first
                                      .country
                                      .toString()
                              : 'error',
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
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
                      Text(
                        _weatherCardController.getWeather().isNotEmpty
                            ? _weatherCardController
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 20,
                        top: 12,
                        right: 20,
                        bottom: 12,
                      ),
                      child: Text(
                        'Thunderstorm',
                        style: TextStyle(
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
  }
}
