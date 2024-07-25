import 'package:donut_list/data/models/donut_model.dart';

abstract class DonutRepository {
  Future<List<DonutModel>> fetchDonuts();
}
