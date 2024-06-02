import 'package:clean_code_project/weather/data/datasource/remote_datasource.dart';
import 'package:clean_code_project/weather/domain/entites/weather.dart';
import 'package:clean_code_project/weather/domain/repository/weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository{
  final BaseRemoteDataSource baseRemoteDataSource ;

  WeatherRepository(this.baseRemoteDataSource);
  @override
  Future<Weather> getWeatherByCountryName(String countryName) async {
    return (await baseRemoteDataSource.getWeatherByCountryName(countryName))!;
  }
}