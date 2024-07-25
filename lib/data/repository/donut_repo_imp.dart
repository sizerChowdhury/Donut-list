import 'package:donut_list/data/data_source/local_data_source.dart';
import 'package:donut_list/data/models/donut_model.dart';
import 'package:donut_list/domain/repository/donut_repo.dart';

class DonutRepositoryImpl implements DonutRepository {
  final LocalDataSource _localDataSource;

  DonutRepositoryImpl(this._localDataSource);

  @override
  Future<List<DonutModel>> fetchDonuts() async {
    return await _localDataSource.fetchDonuts();
  }
}
