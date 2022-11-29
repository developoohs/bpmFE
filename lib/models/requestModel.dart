class RequestModel {
  String code;
  String status;
  String message;
  List<dynamic?> result;

  RequestModel(
      {required this.code,
      required this.message,
      required this.result,
      required this.status});

  factory RequestModel.fromJson(Map<String, dynamic> json) {
    return RequestModel(
        code: json['code'],
        message: json['message'],
        status: json["status"],
        result: json["result"]);
  }
}