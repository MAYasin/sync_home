import 'package:get/get.dart';
import 'package:sync_home/shared/services/weather_service.dart';

class WeatherViewController extends GetxController {
  final WeatherService _weatherService = Get.find();
  var weather = [].obs;
  var forecast = [].obs;
  WeatherViewController() {
    _weatherService.queryWeather().then((value) => {
          weather.value = value,
          update(),
        });
    _weatherService.queryForecast().then((value) => {
          forecast.value = value,
          update(),
        });
  }
}
