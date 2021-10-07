import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_swapi/components/repository/film_state.dart';

class FilmCubit extends Cubit<FilmState> {
  final FilmRepository _repository;

  FilmCubit(this._repository) : super(FilmInitial());

  void getListHistory(String userId, String bearer) async {
    _repository
        .getListHistory(userId, bearer)
        .doOnListen(() => emit(FilmLoading()))
        .map<FilmState>((event) => FilmOnSuccess(event))
        .onErrorReturnWith((error, e) => FilmOnFailed(error.toString()))
        .listen(emit);
  }
}
