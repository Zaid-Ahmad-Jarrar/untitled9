import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:untitled9/models/movies.dart';
import 'package:untitled9/repostaries/movie.dart';

class MoviesRepositoryRemote implements MovieRepository {
  @override
  Stream<List<MovieModel>> getAll() async* {
    yield await _loadMovies();
  }

  @override
  Future<MovieModel?> getOne(int id) async {
    return _movies.firstWhere((item) => item.id == id);
  }

  @override
  Future<void> insert(MovieModel movie) async {

    _movies.add(movie);
  }

  @override
  Future<void> update(MovieModel movie) async {
    int idx = _movies.indexWhere((item) => item.id == movie.id);
    _movies[idx] = movie;
  }

  @override
  Future<void> delete(int id) async {
    _movies.removeWhere((item) => item.id == id);
  }

  List<MovieModel> _movies = [];


  static Future<List<MovieModel>> _loadMovies() async {
    var endPoint = Uri.parse(

        'https://api.themoviedb.org/3/discover/movie?api_key=567125999d5899dc21b2c608a73e2955&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=2&without_genres=war&with_keywords=love&without_keywords=crime&with_watch_monetization_types=flatrate');
    var response = await http.get(endPoint);
    final movieRes = (json.decode(response.body) as Map<String, dynamic>)['results']
        .map<MovieModel>((e) => MovieModel.fromJson(e as Map<String, dynamic>))
        .toList();
    print(movieRes);




    return movieRes;
  }

}