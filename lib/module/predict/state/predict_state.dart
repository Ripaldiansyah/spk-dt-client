import 'package:freezed_annotation/freezed_annotation.dart';
part 'predict_state.freezed.dart';

@unfreezed
class PredictState with _$PredictState {
  factory PredictState({
    @Default(null) String? quality,
    @Default(null) String? fiture,
    @Default(null) String? guarentee,
    @Default(null) String? price,
  }) = _PredictState;
}
