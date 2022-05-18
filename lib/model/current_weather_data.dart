
import 'package:my_weatherapp/model/clouds.dart';
import 'package:my_weatherapp/model/coord.dart';
import 'package:my_weatherapp/model/main_weather.dart';
import 'package:my_weatherapp/model/sys.dart';
import 'package:my_weatherapp/model/weather.dart';
import 'package:my_weatherapp/model/wind.dart';
/*
//import '/model/clouds.dart';
import '/model/coord.dart';
import '/model/main_weather.dart';
import '/model/sys.dart';
import '/model/weather.dart';
import '/model/wind.dart';
*/
class CurrentWeatherData {
  final Coord? coord;
  final List<Weather>? weather;
  final  dynamic base;
  final MainWeather? mainWeather;
  final dynamic visibility;
  final Wind? wind;
  final Clouds? clouds;
  final dynamic dt;
  final Sys? sys;
  final dynamic timezone;
  final dynamic id;
  final dynamic name;
  final dynamic cod;

  CurrentWeatherData(
      {
        this.coord,
        this.weather,
        this.base,
        this.mainWeather,
        this.visibility,
        this.wind,
        this.clouds,
        this.dt,
        this.sys,
        this.timezone,
        this.id,
        this.name,
        this.cod
      }
    );

  factory CurrentWeatherData.fromJson(Map<String,dynamic> json) {
    if (json == null) {
      return CurrentWeatherData();
    }

    return CurrentWeatherData(
      coord: Coord.fromJson(json['coord']),
      weather: (json['weather'] as List)
              .map((w) => Weather.fromJson(w))
              .toList() ,
      base: json['base'],
      mainWeather: MainWeather.fromJson(json['main']),
      visibility: json['visibility'],
      wind: Wind.fromJson(json['wind']),
      clouds: Clouds.fromJson(json['clouds']),
      dt: json['dt'],
      sys: Sys.fromJson(json['sys']),
      timezone: json['timezone'],
      id: json['id'],
      name: json['name'],
      cod: json['cod'],
    );
  }
}
