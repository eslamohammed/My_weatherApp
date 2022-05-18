class MainWeather {
  final double? temp;
  final double? feelsLike;
  final double? tempMin;
  final double? tempMax;
  final dynamic pressure;
  final dynamic humidity;

  MainWeather(
      {
        this.temp,
        this.feelsLike,
        this.tempMin,
        this.tempMax,
        this.pressure,
        this.humidity
      }
    );

  factory MainWeather.fromJson(Map<String,dynamic> json) {
    if (json == null) {
      return MainWeather();
    }

    return MainWeather(
      temp: double.parse(json["temp"]),
      //feelsLike: double.parse(json['feels_like'].toString()),
      feelsLike:json['feels_like'],
      tempMin:  json['temp_min'],
      tempMax:  json['temp_max'],
      pressure: json['pressure'],
      humidity: json['humidity'],
    );
  }
  Map<String,dynamic> toJson(){
    return {
      "temp":this.temp,
      "feels_like":this.feelsLike,
      "temp_min":this.tempMin,
      "temp_max":this.tempMax,
      "pressure":this.pressure,
      "humidity":this.humidity 
    };
  }
}
