import 'package:flutter_bloc/flutter_bloc.dart';
import '../../repository/donut_repository.dart';
import '../model/donuts_model.dart';
import 'donut_event.dart';
import 'donut_state.dart';

class DonutBloc extends Bloc<DonutEvent, DonutState> {
  DonutRepository donutRepository;
  List<Donut> donuts = [];

  DonutBloc(this.donutRepository) : super(DonutState()) {
    on<FetchDonutList>(_fetchDonutList);
  }

  void _fetchDonutList(FetchDonutList event, Emitter<DonutState> emit) async {
    donuts = await donutRepository.fetchDonuts();
    emit(state.copyWith(listStatus: ListStatues.success, donuts: donuts));
  }
}
