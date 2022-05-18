class Sys {
  final dynamic type;
  final dynamic id;
  final dynamic country;
  final dynamic sunrise;
  final dynamic sunset;

  Sys({this.type, this.id, this.country, this.sunrise, this.sunset});

  factory Sys.fromJson(Map<String,dynamic> json) {
    if (json == null) {
      return Sys();
    }

    return Sys(
      type: json['type'],
      country: json['country'],
      sunrise: int.parse(json['sunrise']),
      sunset: json['sunset'],
      id: json['id'],
    );
  }
  Map<String,dynamic>toJson(){
    return {
      "type":this.type,
      "country":this.country,
      "sunrise":this.sunrise,
      "sunset":this.sunset,
      "id":this.id,
    };
  }
}
