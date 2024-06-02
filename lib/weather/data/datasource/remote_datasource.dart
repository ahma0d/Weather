import 'package:clean_code_project/core/utils/api_constance.dart';
import 'package:clean_code_project/weather/data/models/weather_models.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource{
  Future<WeatherModels?>?  getWeatherByCountryName(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource{
  @override
  Future<WeatherModels?>? getWeatherByCountryName(String countryName) async {
    try{
      var response = await Dio().get("${ApiConstance.baseUrl}?q=$countryName&appid=${ApiConstance.apiKey}");
      print(response.data);
      return await WeatherModels.fromJson(response.data);
    } catch(e)
    {
      print(e);
      return null;
    }
  }

}