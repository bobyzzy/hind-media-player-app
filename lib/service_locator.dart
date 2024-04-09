import 'package:get_it/get_it.dart';
import 'package:hind_app/core/platform/network_info.dart';
import 'package:hind_app/core/utils/format_duration.dart';
import 'package:hind_app/features/category/data/datasources/category_local_data_source.dart';
import 'package:hind_app/features/category/data/datasources/category_remote_data_source.dart';
import 'package:hind_app/features/category/data/repositories/category_repository.dart';
import 'package:hind_app/features/category/domain/repositories/category_repository.dart';
import 'package:hind_app/features/category/domain/usecases/get_all_data.dart';
import 'package:hind_app/features/category/domain/usecases/get_all_genre.dart';
import 'package:hind_app/features/category/domain/usecases/get_all_genre_data.dart';
import 'package:hind_app/features/category/domain/usecases/get_data_by_type.dart';
import 'package:hind_app/features/category/presentation/bloc/category_by_genre_bloc/category_by_genre_cubit.dart';
import 'package:hind_app/features/category/presentation/bloc/category_genre_data_bloc/genre_data_cubit.dart';
import 'package:hind_app/features/home/data/datasources/local_data_source.dart';
import 'package:hind_app/features/home/data/datasources/remote_data_source.dart';
import 'package:hind_app/features/home/data/repositories/movies_repository_impl.dart';
import 'package:hind_app/features/home/data/repositories/series_repository_impl.dart';
import 'package:hind_app/features/home/domain/repositories/movies_repository.dart';
import 'package:hind_app/features/home/domain/repositories/series_repository.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_genres.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_movies.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_series.dart';
import 'package:hind_app/features/home/domain/usecases/get_stream_by_id.dart';
import 'package:hind_app/features/home/presentation/bloc/home_screen_bloc/home_cubit.dart';
import 'package:hind_app/features/home/presentation/bloc/stream_bloc/stream_cubit.dart';
import 'package:hind_app/features/search/data/datasources/remote_data_source.dart';
import 'package:hind_app/features/search/data/repositories/search_data_repository_impl.dart';
import 'package:hind_app/features/search/domain/repositories/search_repository.dart';
import 'package:hind_app/features/search/domain/usecases/search_data_usecase.dart';
import 'package:hind_app/features/search/presentation/bloc/search_cubit.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
//BLoC
  sl.registerFactory(() => HomeCubit(
        getAllMovies: sl<GetAllMovies>(),
        getAllSeries: sl<GetAllSeries>(),
        connectionChecker: sl<InternetConnectionChecker>(),
      ));

  sl.registerFactory(() => SearchCubit(
      searchDataUsecase: sl<SearchDataUsecase>(),
      connectionChecker: sl<InternetConnectionChecker>()));

  sl.registerFactory(() => CategoryCubit(
        getByGenreData: sl<CategoryGetDataByGenre>(),
        getAllGenre: sl<CategoryGetAllGenre>(),
        getAllData: sl<CategoryGetAllData>(),
        getDataByType: sl<GetDataByType>(),
        connectionChecker: sl<InternetConnectionChecker>(),
      ));

  sl.registerFactory(() => CategoryByGenreCubit(
      getAllGenreData: sl<CategoryGetDataByGenre>(),
      connectionChecker: sl<InternetConnectionChecker>()));

  sl.registerFactory(() => StreamCubit(getStreamById: sl(), connectionChecker: sl()));

//Usecases
  sl.registerLazySingleton(() => GetAllMovies(sl()));
  sl.registerLazySingleton(() => GetAllGenres(sl()));
  sl.registerLazySingleton(() => GetAllSeries(sl()));
  sl.registerLazySingleton(() => SearchDataUsecase(sl()));
  sl.registerLazySingleton(() => CategoryGetDataByGenre(sl()));
  sl.registerLazySingleton(() => CategoryGetAllGenre(sl()));
  sl.registerLazySingleton(() => CategoryGetAllData(repository: sl()));
  sl.registerLazySingleton(() => GetDataByType(repository: sl()));
  sl.registerLazySingleton(() => GetStreamById(sl()));

//Repositories
  sl.registerLazySingleton<MoviesRepository>(
      () => MoviesRepositoryImpl(remoteDataSource: sl(), localDataSource: sl(), networkInfo: sl()));

  sl.registerLazySingleton<SeriesRepository>(
      () => SeriesRepositoryImpl(localDataSource: sl(), remoteDataSource: sl(), networkInfo: sl()));

  sl.registerLazySingleton<CategoryRepository>(() => CategoryRepositoryImpl(
      remoteDataSource: sl(), localDataSource: sl(), connectionChecker: sl()));
  sl.registerLazySingleton<SearchDataRepository>(
      () => SearchDataRepositoryImpl(connectionChecker: sl(), remoteDataSource: sl()));

//Data Sources
  sl.registerLazySingleton<SearchRemoteDataSource>(() => SearchRemoteDataSourceImpl(client: sl()));

  sl.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<LocalDataSource>(() => LocalDataSourcesImpl(sharedPreferences: sl()));

  sl.registerLazySingleton<CategoryRemoteDataSource>(
      () => CategoryRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<CategoryLocalDataSource>(() => CategoryLocalDataSourceImpl());

  //Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

//External
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());

  //utils
  sl.registerLazySingleton(() => FormatDuration());
}
