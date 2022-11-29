//Package Import
import 'dart:async';
import 'dart:convert';
//File Import
import '../routing/main_route.dart';
import '../models/processModel.dart';
import '../models/stepModel.dart';
import '../models/requestModel.dart';


class HttpResponse {
  late List<dynamic> result;
  late String errorMessage;
  late String url;

  Future<bool> getProcess() async {
    await HttpRouter(url: url).getProcess().then((data) {
      if (data.statusCode == 200) {
        result = RequestModel.fromJson(json.decode(data.body)).result;
        //setResult(RequestModel.fromJson(json.decode(data.body)).result);
      } else {
        Map<String, dynamic> result = json.decode(data.body);
        setMessage(result['message']);
      }
    });

    return true;
  }

  setResult(value) {
    this.result = value;
  }

  void setMessage(String value) {
    errorMessage = value;
  }

  List<dynamic> getItem() {
    return this.result;
  }

  void setUrl(String url) {
    this.url = url;
  }
}
