import 'dart:convert';

import 'package:donut_list/data/models/donut_model.dart';
import 'package:flutter/services.dart';

class LocalDataSource {
  Future<List<DonutModel>> fetchDonuts() async {
    String jsonString = await rootBundle.loadString('assets/donuts.json');
    final List<dynamic> parsedJson = jsonDecode(jsonString);
    await Future<void>.delayed(const Duration(seconds: 1));
    return parsedJson.map((json) => DonutModel.fromJson(json)).toList();
  }
}
