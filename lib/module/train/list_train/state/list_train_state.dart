import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spk_dt_client/model/train_model/train_model.dart';
part 'list_train_state.freezed.dart';

@unfreezed
class ListTrainState with _$ListTrainState {
  factory ListTrainState({
    @Default(null) TrainModel? trains,
    @Default(1) int page,
    @Default(true) bool isLoading,
    @Default(true) bool isLoadingTrains,
    @Default(false) bool isSelected,
    // @Default(false) bool isPaginate,
  }) = _ListTrainState;
}
