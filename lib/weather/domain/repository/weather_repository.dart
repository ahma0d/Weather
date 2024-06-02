import 'package:clean_code_project/weather/domain/entites/weather.dart';

abstract class BaseWeatherRepository{
  Future<Weather> getWeatherByCountryName(String countryName);
}