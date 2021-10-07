import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter_swapi/components/config/app_const.dart';

class FilmDataSource {
  final Dio _client;
  static String errorMsgHandler = "Failed to load, please try again";

  FilmDataSource(this._client);

  Stream<Response<String>> getHistoryList(String userId, String bearer) async* {
    try {
      String endpoint = 'order/history-order/' + userId + "?status=all";
      yield await _client.get(AppConst.getServerApi() + endpoint,
          options: Options(
            headers: {
              "Content-Type": "application/json",
              'Authorization': 'Bearer $bearer',
            },
          ));
    } on DioError catch (e) {
      if (AppConst.isDebuggable) {
        yield throw Exception(e.message);
      } else {
        yield throw Exception(errorMsgHandler);
      }
    }
  }


}
