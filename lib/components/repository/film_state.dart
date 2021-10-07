import 'package:flutter_swapi/features/films/model/films.dart';

abstract class FilmState {}

class FilmInitial extends FilmState {}

class FilmLoading extends FilmState {}

class FilmOnSuccess extends FilmState {
  final Films data;

  FilmOnSuccess(this.data);
}


class FilmOnFailed extends FilmState {
  final String message;

  FilmOnFailed(this.message);
}
