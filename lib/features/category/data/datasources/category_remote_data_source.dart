import 'package:dio/dio.dart';
import 'package:hind_app/core/errors/exeptions.dart';

import 'package:hind_app/features/category/data/models/category_genre/category_genre_model.dart';
import 'package:hind_app/features/category/data/models/category_data/category_data_model.dart';

///Abstract class of [CategoryRemoteDataSource] with four method
///[getDataByGenre] to get one genre
///[getAllGenres] to get all genres
///[getAllData] to get data fro API
///[getDataByType] to get sub type like series or movies etc.
abstract class CategoryRemoteDataSource {
  Future<List<CategoryDataResponseModel>> getDataByGenre(
      String type, String subtype, String idQuery);
  Future<List<CategoryGenreModel>> getAllGenres();
  Future<List<CategoryDataResponseModel>> getAllData(String type, String query);
  Future<List<CategoryDataResponseModel>> getDataByType(String type, String subtype);
}

///Implentations of abstract methods [CategoryRemoteDataSource]
///in this module uses http class to connect API and returns decoded JSON from API
/// also this module uses [ServerExeption] to catch errors of Connection.
class CategoryRemoteDataSourceImpl extends CategoryRemoteDataSource {
  final Dio client;
  CategoryRemoteDataSourceImpl({required this.client});

  ///Method of getting all genres.
  @override
  Future<List<CategoryGenreModel>> getAllGenres() async {
    try {
      final response = await client.get('movies/genre/');
      if (response.statusCode == 200) {
        var data = response.data;
        return (data as List).map((e) => CategoryGenreModel.fromJson(e)).toList();
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw NotFoundExeption();
      }
      if (e.response?.statusCode == 502) {
        throw ServerExeption();
      }

      if (e.response?.statusCode == 401) {
        throw AuthExeption();
      }

      rethrow;
    }

    throw UnimplementedError();
  }

  ///Method [getDataByGenre] with parameters [type] to get path of API
  ///[subtype] also path API and [idQuery] query of API. Return Future<List<CategoryDataModel>>
  @override
  Future<List<CategoryDataResponseModel>> getDataByGenre(
      String type, String subtype, String idQuery) async {
    try {
      final response = await client.get('$type/$subtype/?genre=$idQuery');
      if (response.statusCode == 200) {
        var data = response.data;
        return (data as List).map((e) => CategoryDataResponseModel.fromJson(e)).toList();
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw NotFoundExeption();
      }
      if (e.response?.statusCode == 502) {
        throw ServerExeption();
      }

      if (e.response?.statusCode == 401) {
        throw AuthExeption();
      }
      rethrow;
    }

    throw UnimplementedError();
  }

  //TODO: Убрать методи и модели так же сущности потому что данные одинаковые
  //TODO: Убрать статичные поля и заменить на динамические

  ///Method [getAllData] with parameters [type] and [query]
  ///all this parameters needs to path API. And returns Future<List<CategoryDataModel>>
  @override
  Future<List<CategoryDataResponseModel>> getAllData(String type, String query) async {
    try {
      final List<CategoryDataResponseModel> list;
      final responseMovies = await client.get('movies/all_movies/');
      final responseSeries = await client.get('series/all_series/');

      if (responseMovies.statusCode == 200 && responseSeries.statusCode == 200) {
        var moives = responseMovies.data;
        var series = responseSeries.data;
        list = (moives as List).map((e) => CategoryDataResponseModel.fromJson(e)).toList();
        list.addAll((series as List).map((e) => CategoryDataResponseModel.fromJson(e)).toList());
        return list;
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw NotFoundExeption();
      }
      if (e.response?.statusCode == 502) {
        throw ServerExeption();
      }

      if (e.response?.statusCode == 401) {
        throw AuthExeption();
      }
      rethrow;
    }

    throw UnimplementedError();
  }

  ///Method [getDataByType] include parameters [type] and [subtype].
  ///Returns Future<List<CategoryDataModel>>.
  @override
  Future<List<CategoryDataResponseModel>> getDataByType(String type, String subtype) async {
    try {
      final response = await client.get('$type/$subtype/');
      if (response.statusCode == 200) {
        var data = response.data;
        return (data as List).map((e) => CategoryDataResponseModel.fromJson(e)).toList();
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        throw NotFoundExeption();
      }
      if (e.response?.statusCode == 502) {
        throw ServerExeption();
      }

      if (e.response?.statusCode == 401) {
        throw AuthExeption();
      }
      rethrow;
    }

    throw UnimplementedError();
  }
}
