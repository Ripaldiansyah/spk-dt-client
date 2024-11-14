import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_user_state.freezed.dart';

@unfreezed
class EditUserState with _$EditUserState {
  factory EditUserState({
    @Default(null) String? name,
    @Default(null) String? role,
    @Default(null) String? email,
    @Default(null) String? status,
  }) = _EditUserState;
}
