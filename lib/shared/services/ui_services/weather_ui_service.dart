class WeatherUIService {
  WeatherUIService();

  static String getWeather(String weatherIcon) {
    String value = 'assets/icon/weather/mist.png';
    switch (weatherIcon) {
      case '01n':
        value = 'assets/icon/weather/clear-night.png';
        break;
      case '01d':
        value = 'assets/icon/weather/clear-day.png';
        break;
      case '02n':
        value = 'assets/icon/weather/fewclouds-night.png';
        break;
      case '02d':
        value = 'assets/icon/weather/fewclouds-day.png';
        break;
      case '03d':
        value = 'assets/icon/weather/scatteredclouds.png';
        break;
      case '03n':
        value = 'assets/icon/weather/scatteredclouds.png';
        break;
      case '04d':
        value = 'assets/icon/weather/brokenclouds.png';
        break;
      case '04n':
        value = 'assets/icon/weather/brokenclouds.png';
        break;
      case '09d':
        value = 'assets/icon/weather/showerrain.png';
        break;
      case '09n':
        value = 'assets/icon/weather/showerrain.png';
        break;
      case '10d':
        value = 'assets/icon/weather/rain-day.png';
        break;
      case '10n':
        value = 'assets/icon/weather/rain-night.png';
        break;
      case '11d':
        value = 'assets/icon/weather/thunderstorm.png';
        break;
      case '11n':
        value = 'assets/icon/weather/thunderstorm.png';
        break;
      case '13d':
        value = 'assets/icon/weather/snow.png';
        break;
      case '13n':
        value = 'assets/icon/weather/snow.png';
        break;
      case '50d':
        value = 'assets/icon/weather/mist.png';
        break;
      case '50n':
        value = 'assets/icon/weather/mist.png';
        break;
      default:
    }
    return value;
  }
}
