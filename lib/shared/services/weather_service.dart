import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sync_home/shared/enums/app_state.dart';
import 'package:sync_home/shared/services/geolocation_service.dart';
import 'package:weather/weather.dart';

class WeatherService {
  String key = '856822fd8e22db5e1ba48c0e7d69844a';
  late WeatherFactory ws;
  List<Weather> _data = [];
  AppState _state = AppState.notDownloaded;
  double? lat, lon;

  WeatherService() {
    ws = WeatherFactory(key);
  }

  void queryForecast() async {
    _state = AppState.downloading;

    Position pos = await GeolocationService.determinePosition();
    lat = pos.latitude;
    lon = pos.longitude;

    List<Weather> forecasts = await ws.fiveDayForecastByLocation(lat!, lon!);
    _data = forecasts;
    _state = AppState.finishedDownloading;
  }

  void queryWeather() async {
    _state = AppState.downloading;

    Position pos = await GeolocationService.determinePosition();
    lat = pos.latitude;
    lon = pos.longitude;

    Weather weather = await ws.currentWeatherByLocation(lat!, lon!);
    _data = [weather];
    _state = AppState.finishedDownloading;
  }

  getResult() {
    return _data;
  }

  AppState getAppState() {
    return _state;
  }
}
