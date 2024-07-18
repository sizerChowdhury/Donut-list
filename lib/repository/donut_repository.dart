import 'dart:convert';
import 'package:flutter/services.dart';

import '../model/donuts_model.dart';


class DonutRepository {
  Future<List<Donut>> fetchDonuts() async {
    String jsonString = await rootBundle.loadString('assets/donuts.json');
    final List<dynamic> parsedJson = jsonDecode(jsonString);
    await Future<void>.delayed(const Duration(seconds: 3));
    return parsedJson.map((json) => Donut.fromJson(json)).toList();
  }
}
