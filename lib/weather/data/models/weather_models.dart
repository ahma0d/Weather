import 'package:clean_code_project/weather/domain/entites/weather.dart';

class WeatherModels extends Weather {

  WeatherModels(
    super.name,
    super.id,
    super.pressure,
    super.description,
    super.main,
  );
  factory WeatherModels.fromJson(Map<String , dynamic> json) => WeatherModels(
    json['name'],
    json['id'],
    json['main']['pressure'],
    json["weather"][0]['description'],
    json["weather"][0]['main'] ,

  );
}
