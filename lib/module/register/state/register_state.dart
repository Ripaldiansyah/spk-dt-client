import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_state.freezed.dart';

@unfreezed
class RegisterState with _$RegisterState {
  factory RegisterState({
    @Default(null) String? name,
    @Default(null) String? role,
    @Default(null) String? email,
    @Default(null) String? status,
    @Default(null) String? password,
  }) = _RegisterState;
}
