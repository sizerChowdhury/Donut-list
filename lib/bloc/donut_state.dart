
import 'package:equatable/equatable.dart';

import '../model/donuts_model.dart';

enum ListStatues { loading, success, failure }

class DonutState extends Equatable {
  ListStatues listStatus;
  List<Donut> donuts;

  DonutState({
    this.listStatus = ListStatues.loading,
    this.donuts = const [],
  });

  DonutState copyWith({List<Donut>? donuts, ListStatues? listStatus}) {
    return DonutState(
      donuts: donuts ?? this.donuts,
      listStatus: listStatus ?? this.listStatus,
    );
  }

  @override
  List<Object?> get props => [listStatus];
}
