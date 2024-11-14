import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spk_dt_client/model/user_model/user_model.dart';
part 'list_user_state.freezed.dart';

@unfreezed
class ListUserState with _$ListUserState {
  factory ListUserState({
    @Default(null) UserModel? users,
    @Default(1) int page,
    @Default(true) bool isLoading,
    @Default(true) bool isLoadingUsers,
    @Default(false) bool isSelected,
    @Default(false) bool isPaginate,
  }) = _ListUserState;
}
