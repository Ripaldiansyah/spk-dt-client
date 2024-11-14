import 'package:freezed_annotation/freezed_annotation.dart';
part 'settings_state.freezed.dart';

@unfreezed
class SettingsState with _$SettingsState {
  factory SettingsState({
    @Default(null) String? name,
    @Default(null) String? role,
    @Default(null) String? email,
    @Default(null) String? status,
    @Default(null) String? password,
  }) = _SettingsState;
}
