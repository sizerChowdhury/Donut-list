import 'package:donut_list/domain/entity/topping_entity.dart';

class ToppingModel {
  Topping toEntity(Map<String, dynamic> json) {
    return Topping(
      id: json['id'],
      type: json['type'],
    );
  }
}
