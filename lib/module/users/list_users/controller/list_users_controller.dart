import 'package:get/get.dart';
import 'package:spk_dt_client/model/user_model/user_model.dart';
import '../../../../core.dart';

class ListUsersController extends GetxController {
  ListUsersView? view;
  var state = ListUserState();

  @override
  void onInit() async {
    await getUsers();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  refreshUser() {
    state = state.copyWith(users: null, isLoadingUsers: true);
    update();
    getUsers();
  }

  Future<void> getUsers() async {
    final neUsers = await UserService().getUsers(state.page);
    final oldData = state.users?.data;
    final combinedData = [
      ...(state.isSelected ? [] : oldData?.data ?? []),
      ...(neUsers.data?.data ?? []),
    ].cast<Datum>();

    final updatedData = Data(
        currentPage: neUsers.data?.currentPage ?? oldData?.currentPage,
        data: combinedData,
        firstPageUrl: neUsers.data?.firstPageUrl ?? oldData?.firstPageUrl,
        from: neUsers.data?.from ?? oldData?.from,
        lastPage: neUsers.data?.lastPage ?? oldData?.lastPage,
        lastPageUrl: neUsers.data?.lastPageUrl ?? oldData?.lastPageUrl,
        links: neUsers.data?.links ?? oldData?.links,
        nextPageUrl: neUsers.data?.nextPageUrl ?? oldData?.nextPageUrl,
        path: neUsers.data?.path ?? oldData?.path,
        perPage: neUsers.data?.perPage ?? oldData?.perPage,
        prevPageUrl: neUsers.data?.prevPageUrl ?? oldData?.prevPageUrl,
        to: neUsers.data?.to ?? oldData?.to,
        total: (oldData?.total ?? 0));

    final updatedUsers = UserModel(data: updatedData);

    state = state.copyWith(users: updatedUsers, isLoadingUsers: false);
    update();
  }

  deleteUser(id) async {
    bool isConfirm = await ConfirmDialog.ShowDialog(
      title: "Apakah anda yakin ingin menghapus user ?",
      confirmText: "Ya",
      cancelText: "Batal",
    );

    if (isConfirm) {
      try {
        UserService().deleteUser(id);
        await ConfirmDialog.ShowDialog(
          title: "Berhasil menghapus user",
          confirmText: "Selesai",
          isSuccess: true,
        );
        refreshUser();
      } on Exception catch (err) {
        await ConfirmDialog.ShowDialog(
          title: "gagal menghapus user",
          confirmText: "Selesai",
          isFailed: true,
        );
      }
    }
  }
}
