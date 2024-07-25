import 'package:donut_list/data/models/donut_model.dart';
import 'package:donut_list/domain/repository/donut_repo.dart';

class DonutUseCase {
  final DonutRepository _donutRepository;

  DonutUseCase(this._donutRepository);

  Future<List<DonutModel>> execute() async {
    return await _donutRepository.fetchDonuts();
  }
}
