class Clouds {
  final dynamic all;

  Clouds({this.all});

  factory Clouds.fromJson(Map<String,dynamic> json) {
    if (json == null) {
      return Clouds();
    }

    return Clouds(
      all: int.parse(json['all']),
    );
  }
  Map<String,dynamic>toJson(){
    return{
      "all":this.all
    };
  }
}

