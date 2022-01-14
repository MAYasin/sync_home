import 'package:get/get.dart';
import 'package:sync_home/shared/services/weather_service.dart';
import 'package:weather/weather.dart';

class WeatherCardController extends GetxController {
  final WeatherService _weatherService = Get.find();
  var weather = [].obs;

  @override
  void onInit() {
    fetchWeather();
    super.onInit();
  }

  fetchWeather() {
    weather.clear();
    _weatherService.queryWeather().then((value) => {
          weather.value = value,
          update(),
        });
  }

  List<Weather> getWeather() {
    return weather.cast<Weather>();
  }
}
