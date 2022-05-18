class Wind {
  final double? speed;
  final dynamic deg;

  Wind({this.speed, this.deg});

  factory Wind.fromJson(Map<String,dynamic> json) {
    if (json == null) {
      return Wind();
    }

    return Wind(
      speed: double.parse(json['speed']),
      deg: json['deg'],
    );
  }
  Map <String,dynamic> toJson(){
    return {
      "speed":this.speed,
      "deg":this.deg
    };
  }
}
