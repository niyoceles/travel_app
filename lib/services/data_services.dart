import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/data_model.dart';

class DataServices {
  String apiUrl = "http://mark.bslmeiyu.com/api/getplaces";

  Future<List<DataModal>> getInfo() async {
    http.Response res = await http.get(Uri.parse(apiUrl));

    try {
      if (res.statusCode == 200) {
        List<dynamic> list = jsonDecode(res.body);
        return list.map((e) => DataModal.fromJson(e)).toList();
      } else {
        return <DataModal>[];
      }
    } catch (e) {
      print(e);
      return <DataModal>[];
    }
  }
}
