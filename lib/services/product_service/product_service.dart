import '../../core.dart';
import '../../model/product_model/product_model.dart';

class ProductService {
  Future createProduct({
    required String productName,
    required int price,
    required String guarentee,
    required String fiture,
    required String quality,
    required String photo,
  }) async {
    try {
      var response = await DioService.ds.post(
        "$baseUrl/api/products/",
        data: {
          "product_name": productName,
          "harga": price,
          "garansi": guarentee,
          "fitur": fiture,
          "kualitas": quality,
          "photo": photo,
        },
      );

      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future updateProduct({
    required String productName,
    required int price,
    required String guarentee,
    required String fiture,
    required String quality,
    required String photo,
    required int id,
  }) async {
    try {
      var response = await DioService.ds.put(
        "$baseUrl/api/products/$id",
        data: {
          "product_name": productName,
          "harga": price,
          "garansi": guarentee,
          "fitur": fiture,
          "kualitas": quality,
          "photo": photo,
        },
      );

      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future deleteProduct({
    required int id,
  }) async {
    try {
      var response = await DioService.ds.delete(
        "$baseUrl/api/products/$id",
      );

      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<ProductModel> getProducts(int page) async {
    try {
      var response = await DioService.ds.get(
        "$baseUrl/api/products?page=${page}",
      );

      return ProductModel.fromJson(response.data);
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
