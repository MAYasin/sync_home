import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sync_home/ui/shared/weather_view/weather_view.dart';
import 'package:sync_home/ui/views/home_view/home_view.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          HomeView(),
        );
      },
      child: Card(
        margin: const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: Colors.lightBlue[200],
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Johannesburg, South Africa'),
              const Text('24 °C'),
              Card(
                margin: const EdgeInsets.all(0),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                color: Colors.lightBlue[600],
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Thunderstorm',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
