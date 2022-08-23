import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled9/models/movies.dart';
import 'package:untitled9/modules/discovery/controller/discovery_controller.dart';
import 'package:untitled9/modules/movie_details/views/movie_view.dart';

import 'package:get/get.dart';
import 'movie_discovery_container.dart';

class MovieDiscoveryView extends StatelessWidget {
  const MovieDiscoveryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DiscoveryController controller = Get.put(DiscoveryController());


    return Scaffold(
      appBar: AppBar(title: Text('API Demo'),),
      body: StreamBuilder<List<MovieModel>>(
          stream: controller.movies,
          initialData: [],
          builder: (
          BuildContext context,
          AsyncSnapshot<List<MovieModel>> movieList,

      ) {

        return ListView(
          children: movieList.data!
              .map(
            ((MovieModel movie) => Padding(
              padding:  EdgeInsets.symmetric(vertical: 15),
              child: MoviesContainer(title: movie.title,onPressed: (){Get.to(() => MovieView(), arguments: [
                {"title": movie.title},
                {"img": movie.poster_path},
                {"overview": movie.overview},
                {"release_date": movie.release_date},
                {"vote": movie.vote_average},
              ]);},vote: movie.vote_average,
                img: movie.poster_path,releaseDate: movie.release_date, runTime: movie.runtime,),
            )),
          )
              .toList(),
        );
      }),
    );
  }
}
