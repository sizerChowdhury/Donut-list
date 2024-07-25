import 'package:donut_list/data/models/batter_model.dart';
import 'package:donut_list/data/models/topping_model.dart';
import 'package:donut_list/domain/entity/donut_entity.dart';

class DonutModel extends DonutEntity {
  DonutModel({
    required super.id,
    required super.type,
    required super.name,
    required super.ppu,
    required super.batters,
    required super.toppings,
  });

  factory DonutModel.fromJson(Map<String, dynamic> json) {
    var data = DonutModel(
      id: json['id'],
      type: json['type'],
      name: json['name'],
      ppu: json['ppu'],
      batters: (json['batters']['batter'] as List)
          .map((b) => BatterModel().toEntity(b))
          .toList(),
      toppings: (json['topping'] as List)
          .map((t) => ToppingModel().toEntity(t))
          .toList(),
    );
    return data;
  }
}
