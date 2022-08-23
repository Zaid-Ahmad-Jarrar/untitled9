import 'package:untitled9/repostaries/movie.dart';

import '../models/movies.dart';

class MovieRepositoryLocal implements MovieRepository {
  Stream<List<MovieModel>> getAll() async* {
    Future.delayed(const Duration(milliseconds: 500));
    yield _movies;
  }

  Future<MovieModel?> getOne(int id) async {
    return _movies.firstWhere((item) => item.id == id);
  }

  Future<void>insert(MovieModel movie) async {

    _movies.add(movie);
  }

  Future<void> update(MovieModel movie) async {
    int idx = _movies.indexWhere((item) => item.id == movie.id);
    _movies[idx] = movie;
  }

  Future<void> delete(int id) async {
    _movies.removeWhere((item) => item.id == id);
  }

  final List<MovieModel> _movies = <MovieModel>[
    MovieModel(title: '' , adult: false , id: 1 , original_title:'' , vote_count: 1, release_date: '', popularity: 1,  vote_average: 1),

  ];
}