import 'package:clean_code_project/weather/domain/entites/weather.dart';
import 'package:clean_code_project/weather/domain/repository/weather_repository.dart';

class GetWeatherByCountryName{
 final  BaseWeatherRepository baseWeatherRepository ;

  GetWeatherByCountryName(this.baseWeatherRepository);

 Future<Weather> execute(String countryName)async
  {
   return await baseWeatherRepository.getWeatherByCountryName(countryName);
  }
}