import 'package:spk_dt_client/model/train_model/train_model.dart';

import '../../core.dart';

class TrainService {
  Future<TrainModel> getTrains() async {
    try {
      var response = await DioService.ds.get(
        "$baseUrl/api/train",
      );

      return TrainModel.fromJson(response.data);
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future createTrain({
    state,
  }) async {
    try {
      var response = await DioService.ds.post(
        "$baseUrl/api/train/",
        data: {
          "harga": state.price,
          "garansi": state.guarentee,
          "fitur": state.fiture,
          "kualitas": state.quality,
          "prediction": state.decision,
          if (state.productId != null) "product_id": int.parse(state.productId),
        },
      );

      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future deleteTrains({
    required int id,
  }) async {
    try {
      var response = await DioService.ds.delete(
        "$baseUrl/api/train/$id",
      );

      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future editTrain({
    state,
    item,
  }) async {
    try {
      var response = await DioService.ds.put(
        "$baseUrl/api/train/${item.id}",
        data: {
          "harga": state.price ?? item.harga,
          "garansi": state.guarentee ?? item.garansi,
          "fitur": state.fiture ?? item.fitur,
          "kualitas": state.quality ?? item.kualitas,
          "prediction": state.decision ?? item.prediction,
          "product_id": int.parse(state.productId ?? item.productId.toString()),
        },
      );

      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
