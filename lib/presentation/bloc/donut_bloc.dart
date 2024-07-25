import 'package:donut_list/domain/use_cases/donut_use_case.dart';
import 'package:donut_list/presentation/bloc/donut_event.dart';
import 'package:donut_list/presentation/bloc/donut_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DonutBloc extends Bloc<DonutEvent, DonutState> {
  final DonutUseCase _getDonuts;

  DonutBloc(this._getDonuts) : super(DonutState()) {
    on<FetchDonutList>(_fetchDonutList);
  }

  void _fetchDonutList(FetchDonutList event, Emitter<DonutState> emit) async {
    emit(state.copyWith(listStatus: ListStatues.loading));
    try {
      final donuts = await _getDonuts.execute();
      emit(state.copyWith(listStatus: ListStatues.success, donuts: donuts));
    } catch (e) {
      emit(state.copyWith(listStatus: ListStatues.failure));
    }
  }
}
