import 'package:donut_list/domain/entity/batter_entity.dart';
import 'package:donut_list/domain/entity/topping_entity.dart';

class DonutEntity {
  final String id;
  final String type;
  final String name;
  final double ppu;
  final List<Batter> batters;
  final List<Topping> toppings;

  DonutEntity({
    required this.id,
    required this.type,
    required this.name,
    required this.ppu,
    required this.batters,
    required this.toppings,
  });
}
