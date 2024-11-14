import 'package:dio/dio.dart';
import 'package:spk_dt_client/core.dart';

class AuthService {
  Future login({
    required String email,
    required String password,
  }) async {
    try {
      var response = await Dio().post(
        "$baseUrl/api/auth/login",
        options: Options(
          validateStatus: (status) => true,
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "email": email,
          "password": password,
        },
      );

      final setCookie = response.headers['set-cookie'];
      if (setCookie != null) {
        String xsrfToken = '';
        String laravelSession = '';

        for (var cookie in setCookie) {
          if (cookie.startsWith('XSRF-TOKEN=')) {
            xsrfToken = cookie.split(';')[0].split('=')[1];
          } else if (cookie.startsWith('laravel_session=')) {
            laravelSession = cookie.split(';')[0].split('=')[1];
          }
        }
        DBService.set("XSRF-TOKEN", xsrfToken);
        DBService.set("laravel_session", laravelSession);
      }

      return response;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future logout() async {
    try {
      var res = await DioService.ds.post(
        "$baseUrl/api/auth/logout",
      );
      DBService.clear("token");
      DBService.clear("XSRF-TOKEN");
      DBService.clear("laravel_session");
      return res;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
