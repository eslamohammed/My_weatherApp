
class Weather {
  final dynamic id;
  final dynamic main;
  final dynamic description;
  final dynamic icon;

  Weather({this.id, this.main, this.description, this.icon});

  /*factory Weather.fromJson(dynamic json) {
    if (json == null) {
      return Weather();
    }

    return Weather(
        id: json['id'],
        main: json['main'],
        description: json['description'],
        icon: json['icon']);
  }*/
  factory Weather.fromJson(Map<String,dynamic> json) {
    if (json == null) {
      return Weather();
    }

    return Weather(
      id: int.parse(json['id']),
      main: json['main'],
      description: json["description"],
      icon: json["icon"]
      );
  }
  
  Map<String,dynamic> toJson(){
    return {    
      "id": this.id,
      "main":this.main,
      "description":this.description,
      "icon":this.icon
    };
  }

}
