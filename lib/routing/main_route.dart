import 'dart:convert';
import 'package:http/http.dart' as http;


class HttpRouter {
  final String url;

  HttpRouter({required this.url});

  Future<http.Response> getProcess() {
    return http.get(Uri.parse(this.url));
  }


  Future<http.Response> getByIdProcess() {
    return http.get(Uri.parse(this.url));
  }

  Future<http.Response> createProcess() {
    return http.post(
      Uri.parse(this.url),
      body: jsonEncode(<String, String>{
        'title': "title",
      }),
    );
  }

   Future<http.Response> updateProcess() {
    return http.post(
      Uri.parse(this.url),
      body: jsonEncode(<String, String>{
        'title': "title",
      }),
    );
  }



   Future<http.Response> deleteProcess() {
    return http.post(
      Uri.parse(this.url),
      body: jsonEncode(<String, String>{
        'title': "title",
      }),
    );
  }

}

