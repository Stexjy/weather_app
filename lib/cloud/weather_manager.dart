import 'package:weather/weather.dart';
import 'package:weather_app/cloud/cities.dart';

class WeatherManager {
  WeatherFactory wf = WeatherFactory("61ec7eb4b0b0529335177eb4b427a7a6");

  static List<String> getWeatherCities(String startsWith) {
    List<String> matchingCities = [];

    for (String city in Cities.getCities()) {
      if (city.toLowerCase().startsWith(startsWith.toLowerCase())) {
        matchingCities.add(city);
      }
    }

    return matchingCities;
  }

  Future<Weather> getWeatherByCity(String cityName) async {
    return wf.currentWeatherByCityName(cityName);
  }
}
