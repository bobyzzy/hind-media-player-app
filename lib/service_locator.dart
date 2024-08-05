import 'package:get_it/get_it.dart';
import 'package:hind_app/core/bloc/bloc_observer.dart';
import 'package:hind_app/core/config/network_config.dart';
import 'package:hind_app/core/config/token_config.dart';
import 'package:hind_app/core/platform/network_info.dart';
import 'package:hind_app/core/routes/app_router.dart';
import 'package:hind_app/core/services/image_picker_service.dart';
import 'package:hind_app/core/services/ticker_service.dart';
import 'package:hind_app/core/utils/format_duration.dart';
import 'package:hind_app/core/utils/logging.dart';
import 'package:hind_app/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:hind_app/features/auth/data/repositories/auth_repository.dart';
import 'package:hind_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:hind_app/features/auth/domain/usecases/otp_confirm_usecase.dart';
import 'package:hind_app/features/auth/presentation/bloc/auth_cubit.dart';
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
import 'package:hind_app/features/home/domain/usecases/get_all_about_india.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_soundtrack.dart';
import 'package:hind_app/features/home/domain/usecases/get_all_tv_shou.dart';
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
import 'package:hind_app/features/home/presentation/bloc/home_bloc/home_cubit.dart';
import 'package:hind_app/features/home/presentation/bloc/stream_bloc/stream_cubit.dart';
import 'package:hind_app/features/search/data/datasources/remote_data_source.dart';
import 'package:hind_app/features/search/data/repositories/search_data_repository_impl.dart';
import 'package:hind_app/features/search/domain/repositories/search_repository.dart';
import 'package:hind_app/features/search/domain/usecases/search_data_usecase.dart';
import 'package:hind_app/features/search/presentation/bloc/search_cubit.dart';
import 'package:hind_app/features/user_profile/data/datasources/remote_datasource/profile_remote_datasource.dart';
import 'package:hind_app/features/user_profile/data/repositories/profile_repository.dart';
import 'package:hind_app/features/user_profile/domain/repositories/profile_repository.dart';
import 'package:hind_app/features/user_profile/domain/usecases/add_favorite_playback.dart';
import 'package:hind_app/features/user_profile/domain/usecases/delete_favorite_playback.dart';
import 'package:hind_app/features/user_profile/domain/usecases/get_favorite_playback.dart';
import 'package:hind_app/features/user_profile/domain/usecases/get_user_me.dart';
import 'package:hind_app/features/user_profile/domain/usecases/get_user_subscription.dart';
import 'package:hind_app/features/user_profile/presentation/bloc/profile_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  //*==================================== CORE ======================================== *//
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  //*================================= EXTERNAL ======================================== *//
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerFactory(() => Logging().logger);
  sl.registerFactory(() => TokenConfig(sl()));
  sl.registerFactory(() => NetworkConfig(sl()).client);
  sl.registerLazySingleton(() => http.Client());
  sl.registerFactory(() => ImagePicker());
  sl.registerFactory(() => ImagePickerService(imagePicker: sl()));
  sl.registerFactory(() => TickerService());

  sl.registerFactory(() => MyBlocObserver());
  sl.registerFactory(() => AppRouter());
  //*================================= UTILS ======================================== *//
  sl.registerLazySingleton(() => FormatDuration());

  //*================================= CATEGORY DI ======================================== *//

  /*================================= DATA SOURCE ======================================== */

  sl.registerLazySingleton<CategoryRemoteDataSource>(
      () => CategoryRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<CategoryLocalDataSource>(() => CategoryLocalDataSourceImpl());

  /*================================= REPOSITORY ======================================== */
  sl.registerLazySingleton<CategoryRepository>(() => CategoryRepositoryImpl(
      remoteDataSource: sl(), localDataSource: sl(), connectionChecker: sl()));

  /*================================= BLOC ======================================== */

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

  /*================================= USECASE ======================================== */

  sl.registerLazySingleton(() => CategoryGetDataByGenre(sl()));
  sl.registerLazySingleton(() => CategoryGetAllGenre(sl()));
  sl.registerLazySingleton(() => CategoryGetAllData(repository: sl()));
  sl.registerLazySingleton(() => GetDataByType(repository: sl()));

  //*================================= DETAILS  DI ======================================== *//

  /*================================= DATA SOURCE ======================================== */

  sl.registerLazySingleton<PlaybackDetailsRemoteDatasource>(
      () => PlaybackDetailsRemoteDatasourceImpl(client: sl()));
  sl.registerLazySingleton<PlaybackDetailsLocalDataSource>(
      () => PlaybackDetailsLocalDataSourceImpl());

  /*================================= REPOSITORY ======================================== */

  sl.registerLazySingleton<PlaybackDetailsRepository>(() => PlaybackDetailsRepositoryImpl(
      remoteDataSource: sl(), localDataSource: sl(), networkInfo: sl()));

  /*================================= BLOC ======================================== */
  sl.registerFactory(
      () => PlaybackCubit(connectionChecker: sl(), usecase: sl<PlaybackDetailsUsecase>()));

  /*================================= USECASE ======================================== */

  sl.registerLazySingleton(() => PlaybackDetailsUsecase(repository: sl()));

  //*================================= HOME DI ======================================== *//

  /*================================= DATA SOURCE ======================================== */

  sl.registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<LocalDataSource>(() => LocalDataSourcesImpl(sharedPreferences: sl()));

  /*================================= REPOSITORY ======================================== */

  sl.registerLazySingleton<HomeRepository>(
      () => HomerepositoryImpl(remoteDataSource: sl(), localDataSource: sl(), networkInfo: sl()));

  /*================================= BLOC ======================================== */

  sl.registerFactory(() => HomeCubit(
        getAllMovies: sl<GetAllMovies>(),
        getAllSeries: sl<GetAllSeries>(),
        getAllBanners: sl<GetAllBanners>(),
        tvShouUsecase: sl<GetAllTvShouUsecase>(),
        aboutIndiaUsecase: sl<GetAllAboutIndia>(),
        getAllSoundTrack: sl<GetAllSoundTrack>(),
        connectionChecker: sl<InternetConnectionChecker>(),
      ));

  sl.registerFactory(
      () => StreamCubit(getStreamById: sl(), connectionChecker: sl())); //! Надо поменять путь

  /*================================= USECASE ======================================== */

  sl.registerLazySingleton(() => GetAllMovies(sl()));
  sl.registerLazySingleton(() => GetAllGenres(sl()));
  sl.registerLazySingleton(() => GetAllSeries(sl()));
  sl.registerLazySingleton(() => GetAllBanners(repository: sl()));
  sl.registerLazySingleton(() => GetAllTvShouUsecase(sl()));
  sl.registerLazySingleton(() => GetAllAboutIndia(sl()));
  sl.registerLazySingleton(() => GetAllSoundTrack(sl()));
  sl.registerLazySingleton(() => GetStreamById(sl())); //! Надо поменять путь

//*================================= SEARCH DI ======================================== *//

  /*================================= DATA SOURCE ======================================== */
  sl.registerLazySingleton<SearchRemoteDataSource>(() => SearchRemoteDataSourceImpl(client: sl()));

  /*================================= REPOSITORY ======================================== */
  sl.registerLazySingleton<SearchDataRepository>(
      () => SearchDataRepositoryImpl(connectionChecker: sl(), remoteDataSource: sl()));

  /*================================= BLOC ======================================== */
  sl.registerFactory(() => SearchCubit(
      searchDataUsecase: sl<SearchDataUsecase>(),
      connectionChecker: sl<InternetConnectionChecker>()));
  /*================================= USECASE ======================================== */
  sl.registerLazySingleton(() => SearchDataUsecase(sl()));

  //*================================= AUTH DI ======================================== *//

  /*================================= DATA SOURCE ======================================== */
  sl.registerLazySingleton<IAuthRemoteDataSource>(() => AuthRemoteDataSourceImpl(client: sl()));

  /*================================= REPOSITORY ======================================== */
  sl.registerLazySingleton<IAuthRepository>(
      () => AuthRepositoryImpl(checker: sl(), remoteDataSource: sl()));

  /*================================= USECASE ======================================== */
  sl.registerLazySingleton(() => OtpConfirmUsecase(repository: sl()));

  /*================================= BLOC =========================================== */

  sl.registerFactory(() => AuthCubit(sl(), sl()));

  //*================================= SELECTED PLAYBACK DI ======================================== *//

  /*================================= DATA SOURCE ======================================== */

  /*================================= REPOSITORY ======================================== */

  /*================================= USECASE ======================================== */

  /*================================= BLOC =========================================== */

  //?

  //*================================= USER PROFILE DI ======================================== *//

  /*================================= DATA SOURCE ======================================== */
  sl.registerLazySingleton<IProfileRemoteDataSource>(() => ProfileRemoteDataSource(client: sl()));

  /*================================= REPOSITORY ======================================== */
  sl.registerLazySingleton<IProfileRepository>(
      () => ProfileRepositoryImpl(networkInfo: sl(), remoteDataSource: sl()));

  /*================================= USECASE ======================================== */
  sl.registerLazySingleton(() => AddFavoritePlaybackUsecae(repository: sl()));
  sl.registerLazySingleton(() => GetFavoritePlaybackUsecase(repository: sl()));
  sl.registerLazySingleton(() => GetUserSubscription(repository: sl()));
  sl.registerLazySingleton(() => DeleteFavoritePlaybackUsecase(repository: sl()));
  sl.registerLazySingleton(() => GetUserMeUsecase(repository: sl()));

  /*================================= BLOC =========================================== */
  sl.registerFactory(() => ProfileCubit(sl(), sl(), sl(), sl(), sl()));
}
