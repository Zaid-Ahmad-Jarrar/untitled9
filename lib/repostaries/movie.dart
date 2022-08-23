import 'package:untitled9/models/movies.dart';

abstract class MovieRepository {
  Stream<List<MovieModel>> getAll();
  Future<MovieModel?> getOne(int id);
  Future<void> insert(MovieModel movie);
  Future<void> update(MovieModel movie);

}