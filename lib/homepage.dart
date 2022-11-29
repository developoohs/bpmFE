import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:procman/model.dart';
import 'dart:convert';
import 'test/deneme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {

  final url = Uri.parse('http://localhost:8000/process/get_all');

  late RejectedModel insRejectModel;
  late List<dynamic> _gelencevap = [];

  Future<void> _get() async {
    http.Response cevap = await http.get(url);

    if (cevap.statusCode == 200) {
      
      insRejectModel = RejectedModel.fromJson(jsonDecode(utf8.decode(cevap.bodyBytes)));

      setState(() {
        _gelencevap = insRejectModel.result;
      });
    } else {
      setState(() {

      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Business Process MAnagement"),
      ),
      backgroundColor: Colors.blueGrey,
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: _gelencevap.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              child: Center(
                  child: Text(
                      "Birim :  ${Result.fromJson(_gelencevap[index]).name.toString()}"
                      )
                      ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _get();
        },
      ),
    );
  }
}
