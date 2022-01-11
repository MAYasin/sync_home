import 'package:get/get.dart';
import 'package:sync_home/shared/services/weather_service.dart';

class WeatherViewController extends GetxController {
  final WeatherService _weatherService = Get.find();
  WeatherViewController();

  getWeather() {
    _weatherService.queryWeather();
    update();
  }

  getForecast() {
    _weatherService.queryForecast();
    update();
  }

  getResult() {
    _weatherService.getResult();
    print(_weatherService.getResult());
  }

  getAppState() {
    _weatherService.getAppState();
  }
}
