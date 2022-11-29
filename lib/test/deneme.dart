//{"code":"200","status":"Ok","message":"Success Fetch Data","result":[{"level":null,"unit_id":3,"unit":"unit5","description":null},{"level":null,"unit_id":4,"unit":"Satın almaz","description":null},{"level":null,"unit_id":5,"unit":"Satın alma","description":null}]}

import 'dart:convert';

Map<String, dynamic> user = {
  "code": "200",
  "status": "Ok",
  "message": "Success Fetch Data",
  "result": [
    {"level": null, "unit_id": 3, "unit": "unit5", "description": null},
    {"level": null, "unit_id": 4, "unit": "Satın almaz", "description": null},
    {"level": null, "unit_id": 5, "unit": "Satın alma", "description": null}
  ]
};

void main() {
  List<Map<String, Object?>> reqValue = user["result"];
  RejectedModel IRmodel = RejectedModel.fromJson(user);

  for (var i = 0; i < IRmodel.result.length; i++) {
    Result resultModel = Result.fromJson(IRmodel.result[i]);
    print(resultModel.name);
  }
}

class RejectedModel {
  String code;
  String status;
  String message;
  List<dynamic?> result;

  RejectedModel(
      {required this.code,
      required this.message,
      required this.result,
      required this.status});

  factory RejectedModel.fromJson(Map<String, dynamic> json) {
    return RejectedModel(
        code: json['code'],
        message: json['message'],
        status: json["status"],
        result: json["result"]);
  }
}

class Result {
//this will handel nested object
  int? id;
  String? description;
  int? level;
  String? name;

  Result({
    required this.id,
    required this.name,
    required this.description,
    required this.level,
  });

  factory Result.fromJson(Map<String, dynamic> json) {
    return Result(
        id: json['unit_id'],
        name: json['unit'],
        description: json['description'],
        level: json['level']);
  }
}
