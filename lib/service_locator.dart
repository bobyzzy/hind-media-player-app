import 'package:get_it/get_it.dart';
import 'package:hind_app/core/platform/network_info.dart';
import 'package:hind_app/features/home/data/datasources/local_data_source.dart';
import 'package:hind_app/features/home/data/datasources/remote_data_source.dart';
import 'package:hind_app/features/home/data/repositories/movies_repository_impl.dart';
import 'package:hind_app/features/home/data/repositories/series_repository_impl.dart';
import 'package:hind_app/features/home/domain/repositories/movies_repository.dart';
import 'package:hind_app/features/home/domain/repositories/series_repository.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_genres.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_movies.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_series.dart';
import 'package:hind_app/features/home/presentation/bloc/movies_bloc/home_cubit.dart';
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

//Usecases
  sl.registerLazySingleton(() => GetAllMovies(sl()));
  sl.registerLazySingleton(() => GetAllGenres(sl()));
  sl.registerLazySingleton(() => GetAllSeries(sl()));

//Repositories
  sl.registerLazySingleton<MoviesRepository>(() => MoviesRepositoryImpl(
        remoteDataSource: sl(),
        localDataSource: sl(),
        networkInfo: sl(),
      ));

  sl.registerLazySingleton<SeriesRepository>(() => SeriesRepositoryImpl(
        localDataSource: sl(),
        remoteDataSource: sl(),
        networkInfo: sl(),
      ));

  sl.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<LocalDataSource>(() => LocalDataSourcesImpl(sharedPreferences: sl()));

//Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

//External
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
