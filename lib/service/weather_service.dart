import 'package:my_weatherapp/api/api_repository.dart';
import 'package:my_weatherapp/model/current_weather_data.dart';
import 'package:my_weatherapp/model/five_days_data.dart';

class WeatherService {
  final String city;

  ///http://api.openweathermap.org/data/2.5/weather?q=cairo&appid=08d5332b2329c702a9f330a13df95621
  ///http://api.openweathermap.org/data/2.5/forecast?q=cairo&appid=08d5332b2329c702a9f330a13df95621
  String baseUrl = 'https://api.openweathermap.org/data/2.5';
  String apiKey = 'appid=08d5332b2329c702a9f330a13df95621';

  WeatherService({required this.city});

  void getCurrentWeatherData({
    Function()? beforSend,
    Function(CurrentWeatherData currentWeatherData)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    final url = '$baseUrl/weather?q=$city&lang=en&$apiKey';
    ApiRepository(url: '$url', ).get(
        beforeSend: () => {
              if (beforSend != null)
                {
                  beforSend(),
                },
            },
        onSuccess: (data) => {
              //onSuccess!(CurrentWeatherData.fromJson(data)),
            },
        onError: (error) => {
              if (onError != null)
                {
                  print("$error here erorrrrrrrrr WeatherService ----------------"),
                  onError(error),
                }
            });
  }

  void getFiveDaysThreeHoursForcastData({
    Function()? beforSend,
    Function(List<FiveDayData> fiveDayData)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    final url = '$baseUrl/forecast?q=$city&lang=en&$apiKey';
    print(url);
    ApiRepository(
      url: '$url',
    ).get(
        beforeSend: () => {},
        onSuccess: (data) => {
              onSuccess!((data['list'] as List)
                  .map((t) => FiveDayData.fromJson(t))
                  .toList())
            },
        onError: (error) => {
              print("$error ======WeatherService----"),
              onError!(error),
            });
  }
}
