import 'package:donut_list/domain/entity/batter_entity.dart';

class BatterModel {
  Batter toEntity(Map<String, dynamic> json) {
    return Batter(
      id: json['id'],
      type: json['type'],
    );
  }
}
