import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

//TODO : remove apiKey before commit & push
const apiKey = '79d63580c17668168381356763877cf2';

class WeatherModel {
  Future getCityWeatherInfo(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric');
    return await networkHelper.networking();
  }

  Future getCurrentWeatherInfo() async {
    Location location = Location();
    await location.getPosition();

    NetworkHelper networkHelper = NetworkHelper(
        'https://api.openweathermap.org/data/2.5/weather?lat=${location.getLatitude()}&lon=${location.getLongitude()}&appid=$apiKey&units=metric');
    return await networkHelper.networking();
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
