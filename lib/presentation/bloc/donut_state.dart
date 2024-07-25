import 'package:donut_list/data/models/donut_model.dart';
import 'package:equatable/equatable.dart';



enum ListStatues { loading, success, failure }

class DonutState extends Equatable {
  final ListStatues listStatus;
  final List<DonutModel> donuts;

  const DonutState({
    this.listStatus = ListStatues.loading,
    this.donuts = const [],
  });

  DonutState copyWith({List<DonutModel>? donuts, ListStatues? listStatus}) {
    return DonutState(
      donuts: donuts ?? this.donuts,
      listStatus: listStatus ?? this.listStatus,
    );
  }

  @override
  List<Object?> get props => [listStatus];
}
