import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies.freezed.dart';
part 'movies.g.dart';

@Freezed()
class MovieModel with _$MovieModel {
  const factory MovieModel({
    required bool adult,
    String? backdrop_path,
    required int id,
    required String original_title,
    String? overview,
    required double popularity,
    String? poster_path,
    required String release_date,

    int? runtime,


    required String title,

    required double vote_average,
    required int vote_count,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}
