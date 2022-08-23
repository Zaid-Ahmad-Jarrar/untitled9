// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieModel _$$_MovieModelFromJson(Map<String, dynamic> json) =>
    _$_MovieModel(
      adult: json['adult'] as bool,
      backdrop_path: json['backdrop_path'] as String?,
      id: json['id'] as int,
      original_title: json['original_title'] as String,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num).toDouble(),
      poster_path: json['poster_path'] as String?,
      release_date: json['release_date'] as String,
      runtime: json['runtime'] as int?,
      title: json['title'] as String,
      vote_average: (json['vote_average'] as num).toDouble(),
      vote_count: json['vote_count'] as int,
    );

Map<String, dynamic> _$$_MovieModelToJson(_$_MovieModel instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdrop_path,
      'id': instance.id,
      'original_title': instance.original_title,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.poster_path,
      'release_date': instance.release_date,
      'runtime': instance.runtime,
      'title': instance.title,
      'vote_average': instance.vote_average,
      'vote_count': instance.vote_count,
    };
