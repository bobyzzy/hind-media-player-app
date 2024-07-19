// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<MoviesResponseEntity> movies,
    @Default([]) List<MoviesResponseEntity> soundtrack,
    @Default([]) List<MoviesResponseEntity> tvShou,
    @Default([]) List<MoviesResponseEntity> aboutIndia,
    @Default([]) List<SeriesResponseEntity> series,
    @Default([]) List<BannerResponseEntity> banners,
    @Default(Status.initial) Status status,
    @Default(ConnectionStatus.initial) ConnectionStatus connectionStatus,
    @Default('') String errorMessage,
    Failure? failure,
  }) = _HomeState;
}

// class HomePageEmpty extends HomePageState {
//   @override
//   List<Object?> get props => [];
// }

// class HomePageConnectionError extends HomePageState {
//   @override
//   List<Object?> get props => [];
// }

// class HomePageLoading extends HomePageState {
//   @override
//   List<Object?> get props => [];
// }

// class HomePageMoviesLoaded extends HomePageState {
//   final List<MoviesResponseEntity> movies;
//   final List<SeriesResponseEntity> series;
//   final List<BannerResponseEntity> banners;

//   HomePageMoviesLoaded(this.movies, this.series, this.banners);

//   @override
//   List<Object?> get props => [movies, series];
// }

// class HomePageSeriesLoaded extends HomePageState {
//   final List<SeriesResponseEntity> series;

//   HomePageSeriesLoaded(this.series);

//   @override
//   List<Object?> get props => [series];
// }

// class HomePageError extends HomePageState {
//   final String message;

//   HomePageError(this.message);

//   @override
//   List<Object?> get props => [message];
// }

// class HomePageSearch extends HomePageState {
//   final List<MoviesResponseEntity> movies;
//   HomePageSearch({required this.movies});

//   @override
//   List<Object?> get props => [];
// }
