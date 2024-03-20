class SingUpModel {
  SingUpModel({
      this.id, 
      this.message,});

  SingUpModel.fromJson(dynamic json) {
    id = json['id'];
    message = json['message'];
  }
  String? id;
  String? message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['message'] = message;
    return map;
  }

}