import 'package:get/get.dart';

import '../../../models/movies.dart';
import '../../../repostaries/move_remote.dart';
import '../../../repostaries/movie.dart';

class DiscoveryController extends GetxController{
  late  MovieRepository movieRepo;
 late Stream<List<MovieModel>> movies;
 @override
  void onInit() {

    super.onInit();
     movieRepo = MoviesRepositoryRemote();
    movies = movieRepo.getAll();
  }
}