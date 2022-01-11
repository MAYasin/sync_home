class WeatherUIService {
  WeatherUIService();

  static String getWeather(String weatherIcon) {
    String value = 'assets/icon/weather/wind.png';
    switch (weatherIcon) {
      case '01n':
        value = '';
        break;
      case '01d':
        value = 'assets/icon/weather/clear-day.png';
        break;
      case '02n':
        value = '';
        break;
      case '02d':
        value = '';
        break;
      default:
    }
    return value;
  }
}
