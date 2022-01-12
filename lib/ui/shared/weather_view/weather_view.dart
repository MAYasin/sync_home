import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sync_home/shared/services/ui_services/date_ui_service.dart';
import 'package:sync_home/shared/services/ui_services/weather_ui_service.dart';
import 'package:sync_home/ui/shared/base_view.dart';
import 'package:sync_home/ui/shared/weather_view/weather_view_controller.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WeatherView extends StatelessWidget {
  WeatherView({Key? key}) : super(key: key);
  final WeatherViewController weatherViewController =
      Get.put(WeatherViewController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WeatherViewController>(builder: (_) {
      return BaseView(
        padding: 0,
        backgroundColor: _.getWeather().isNotEmpty
            ? _.getWeather().first.weatherIcon!.endsWith('d')
                ? Colors.blue.shade700
                : Colors.purple.shade700
            : Colors.red.shade700,
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
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 90.58 / 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [
                    _.getWeather().isNotEmpty
                        ? _.getWeather().first.weatherIcon!.endsWith('d')
                            ? Colors.blue.shade700
                            : Colors.purple.shade700
                        : Colors.red.shade700,
                    Colors.white54,
                  ],
                ),
              ),
              child: Column(
                children: [
                  _.getWeather().isNotEmpty
                      ? Padding(
                          padding: const EdgeInsets.all(40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                DateUiService.parseDate(DateTime.parse(_
                                    .getWeather()
                                    .first
                                    .date!
                                    .toIso8601String())),
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _
                                                .getWeather()
                                                .first
                                                .areaName
                                                .toString() +
                                            ', ' +
                                            _
                                                .getWeather()
                                                .first
                                                .country
                                                .toString(),
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            _
                                                .getWeather()
                                                .first
                                                .temperature!
                                                .celsius!
                                                .toStringAsFixed(1)
                                                .toString(),
                                            style: const TextStyle(
                                              fontSize: 80,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Text(
                                            '°C',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 40,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Image.asset(
                                        'assets/icon/weather/clear-day.png',
                                        height: 120,
                                        width: 120,
                                        scale: 0.3,
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        _
                                            .getWeather()
                                            .first
                                            .weatherDescription
                                            .toString(),
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      : const Text('ERROR'),
                  const WeatherChart(),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Colors.white),
            ),
          ],
        ),
      );
    });
  }
}

class WeatherChart extends StatelessWidget {
  const WeatherChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData(DateTime.now(), 35),
      SalesData(DateTime.now(), 28),
      SalesData(DateTime.now(), 34),
    ];
    return SfCartesianChart(primaryXAxis: DateTimeAxis(), series: <ChartSeries>[
      LineSeries<SalesData, DateTime>(
          dataSource: chartData,
          // Dash values for line
          dashArray: <double>[5, 5],
          xValueMapper: (SalesData sales, _) => sales.year,
          yValueMapper: (SalesData sales, _) => sales.sales)
    ]);
  }
}

class SalesData {
  SalesData(this.year, this.sales);
  final DateTime year;
  final double sales;
}
