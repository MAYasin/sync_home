import 'package:geolocator/geolocator.dart';
import 'package:sync_home/shared/services/geolocation_service.dart';
import 'package:weather/weather.dart';

class WeatherService {
  String key = '856822fd8e22db5e1ba48c0e7d69844a';
  late WeatherFactory ws;
  double? lat, lon;

  WeatherService() {
    ws = WeatherFactory(key);
  }

  Future<List<dynamic>> queryForecast() async {
    Position pos = await GeolocationService.determinePosition();
    lat = pos.latitude;
    lon = pos.longitude;

    List<Weather> forecasts = await ws.fiveDayForecastByLocation(lat!, lon!);
    return forecasts;
  }

  Future<List<dynamic>> queryWeather() async {
    Position pos = await GeolocationService.determinePosition();
    lat = pos.latitude;
    lon = pos.longitude;

    Weather weather = await ws.currentWeatherByLocation(lat!, lon!);
    return [weather];
  }
}
