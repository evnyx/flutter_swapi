import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_swapi/components/api/film_data_source.dart';
import 'package:flutter_swapi/components/config/app_const.dart';
import 'package:flutter_swapi/features/films/model/films.dart';
import 'package:logger/logger.dart';

class FilmRepository {
  final FilmDataSource _dataSource;

  FilmRepository(this._dataSource);

  Stream<Films> getListFilm(String userId, String bearer) =>
      _dataSource.getHistoryList(userId, bearer).map(_mapToJson).map((event) {
        Logger()..d(bearer);
        Films response = Films.fromJson(event);
        return response!;
      });

  _mapToJson(Response<String> event) {
    try {
      return jsonDecode(event.data!);
    } catch (e) {
      if (AppConst.isDebuggable) {
        throw Exception(e);
      } else {
        throw Exception(FilmDataSource.errorMsgHandler);
      }
    }
  }
}
