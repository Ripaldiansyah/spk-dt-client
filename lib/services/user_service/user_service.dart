import 'package:spk_dt_client/model/user_model/user_model.dart';

import '../../core.dart';

class UserService {
  Future<UserModel> getUsers(int page) async {
    try {
      var response = await DioService.ds.get(
        "$baseUrl/api/users?page=${page}",
      );

      return UserModel.fromJson(response.data);
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future getUserById(id) async {
    try {
      var response = await DioService.ds.get(
        "$baseUrl/api/users/$id",
      );

      return response.data;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future editUser({
    required String id,
    String? name,
    String? password,
    String? role,
    String? email,
  }) async {
    try {
      var response = await DioService.ds.put(
        "$baseUrl/api/users/$id",
        data: {
          "name": name,
          if (password != null) "password": password,
          if (role != null) "role": role,
          "email": email,
        },
      );

      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<UserModel> deleteUser(id) async {
    try {
      var response = await DioService.ds.delete(
        "$baseUrl/api/users/$id",
      );

      return UserModel.fromJson(response.data);
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future addUser({
    required String name,
    required String password,
    required String email,
  }) async {
    try {
      var response = await DioService.ds.post(
        "$baseUrl/api/users/",
        data: {
          "name": name,
          "password": password,
          "email": email,
        },
      );

      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
