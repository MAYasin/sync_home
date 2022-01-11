import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sync_home/shared/enums/app_state.dart';
import 'package:sync_home/ui/shared/base_view.dart';
import 'package:sync_home/ui/shared/weather_view/weather_view_controller.dart';

class WeatherView extends StatefulWidget {
  WeatherView({Key? key}) : super(key: key);

  final WeatherViewController weatherViewController =
      Get.put(WeatherViewController());

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(5),
                  child: TextButton(
                    child: const Text(
                      'Fetch weather',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      _.getWeather();
                      print('click');
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red)),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: TextButton(
                    child: const Text(
                      'Fetch forecast',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: _.getForecast(),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blue)),
                  ),
                )
              ],
            ),
            const Text(
              'Output:',
              style: TextStyle(fontSize: 20),
            ),
            const Divider(
              height: 20.0,
              thickness: 2.0,
            ),
            SizedBox(
                child: _.getAppState() == AppState.finishedDownloading
                    ? ListView.separated(
                        shrinkWrap: true,
                        itemCount: _.getResult().length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(_.getResult()[index].toString()),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                      )
                    : _.getAppState() == AppState.downloading
                        ? contentDownloading()
                        : contentNotDownloaded()),
          ],
        ),
      );
    });
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
