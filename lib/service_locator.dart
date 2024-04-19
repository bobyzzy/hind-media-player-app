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
import 'package:hind_app/features/playback_details/data/datasources/playback_details_local_datasource.dart';
import 'package:hind_app/features/playback_details/data/datasources/playback_details_remote_datasource.dart';
import 'package:hind_app/features/playback_details/data/repositories/playback_details_repository.dart';
import 'package:hind_app/features/playback_details/domain/repositories/details_playback_repository.dart';
import 'package:hind_app/features/playback_details/domain/usecases/playback_details_usecase.dart';
import 'package:hind_app/features/playback_details/presentation/bloc/playback_bloc.dart';
import 'package:hind_app/features/home/data/datasources/local_data_source.dart';
import 'package:hind_app/features/home/data/datasources/remote_data_source.dart';
import 'package:hind_app/features/home/data/repositories/home_repository.dart';
import 'package:hind_app/features/home/domain/repositories/home_repository.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_banners.dart';
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
  //?Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //?External
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());

  //?utils
  sl.registerLazySingleton(() => FormatDuration());

  //?AUTH DI
  //BLoC

  //Usecases

  //Repositories

  //Data Sources

  //?CATEGORY DI
  //BLoC
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

  //Usecases
  sl.registerLazySingleton(() => CategoryGetDataByGenre(sl()));
  sl.registerLazySingleton(() => CategoryGetAllGenre(sl()));
  sl.registerLazySingleton(() => CategoryGetAllData(repository: sl()));
  sl.registerLazySingleton(() => GetDataByType(repository: sl()));

  //Repositories
  sl.registerLazySingleton<CategoryRepository>(() => CategoryRepositoryImpl(
      remoteDataSource: sl(), localDataSource: sl(), connectionChecker: sl()));

  //Data Sources
  sl.registerLazySingleton<CategoryRemoteDataSource>(
      () => CategoryRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<CategoryLocalDataSource>(() => CategoryLocalDataSourceImpl());

  //?DETAILS PLAYBACK DI

  //BLoC
  sl.registerFactory(() => PlaybackCubit(connectionChecker: sl(), usecase: sl()));

  //Usecases
  sl.registerLazySingleton(() => PlaybackDetailsUsecase(repository: sl()));

  //Repositories
  sl.registerLazySingleton<PlaybackDetailsRepository>(() => PlaybackDetailsRepositoryImpl(
      remoteDataSource: sl(), localDataSource: sl(), networkInfo: sl()));

  //Data Sources
  sl.registerLazySingleton<PlaybackDetailsRemoteDatasource>(
      () => PlaybackDetailsRemoteDatasourceImpl(client: sl()));
  sl.registerLazySingleton<PlaybackDetailsLocalDataSource>(
      () => PlaybackDetailsLocalDataSourceImpl());

  //?HOME DI
  //BLoC
  sl.registerFactory(() => HomeCubit(
        getAllMovies: sl<GetAllMovies>(),
        getAllSeries: sl<GetAllSeries>(),
        getAllBanners: sl<GetAllBanners>(),
        connectionChecker: sl<InternetConnectionChecker>(),
      ));

  sl.registerFactory(
      () => StreamCubit(getStreamById: sl(), connectionChecker: sl())); //! Надо поменять путь

  //Usecases
  sl.registerLazySingleton(() => GetAllMovies(sl()));
  sl.registerLazySingleton(() => GetAllGenres(sl()));
  sl.registerLazySingleton(() => GetAllSeries(sl()));
  sl.registerLazySingleton(() => GetAllBanners(repository: sl()));
  sl.registerLazySingleton(() => GetStreamById(sl())); //! Надо поменять путь

  //Repositories
  sl.registerLazySingleton<HomeRepository>(
      () => HomerepositoryImpl(remoteDataSource: sl(), localDataSource: sl(), networkInfo: sl()));

  //Data Sources
  sl.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<LocalDataSource>(() => LocalDataSourcesImpl(sharedPreferences: sl()));

  //?SEARCH DI
  //BLoC
  sl.registerFactory(() => SearchCubit(
      searchDataUsecase: sl<SearchDataUsecase>(),
      connectionChecker: sl<InternetConnectionChecker>()));

  //Usecases
  sl.registerLazySingleton(() => SearchDataUsecase(sl()));

  //Repositories
  sl.registerLazySingleton<SearchDataRepository>(
      () => SearchDataRepositoryImpl(connectionChecker: sl(), remoteDataSource: sl()));

  //Data Sources
  sl.registerLazySingleton<SearchRemoteDataSource>(() => SearchRemoteDataSourceImpl(client: sl()));

  //?SELECTED PLAYBACK DI

  //BLoC

  //Usecases

  //Repositories

  //Data Sources

  //?USER PROFILE DI

  //BLoC

  //Usecases

  //Repositories

  //Data Sources
}
