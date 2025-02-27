class RouteNames {
  // Home
  static const String home = '/home_screen';
  static const String movieGenerated = '/home_screen/movie_generated';
  static const String movieDetail = '/home_screen/movie_detail';
  static const String playbackSeason = '/home_screen/playback_season';
  static const String search = '/home_screen/search';
  static const String videoPlayer = '/home_screen/video_player';

  // Category
  static const String category = '/category_screen';
  static const String categoryByGenre = '/category_screen/category_by_genre';
  static const String categorySearch = '/category_screen/search';
  static const String movieDetailCategory = '/category_screen/movie_detail_category';

  // Profile Navigation
  static const String profileNavigation = '/profile_navigation';
  
  // Authorized Profile
  static const String authProfile = '/profile_navigation/auth_profile';
  static const String editProfile = '/profile_navigation/auth_profile/edit_profile';
  static const String selectedPlayback = '/profile_navigation/auth_profile/selected_playback';
  static const String settings = '/profile_navigation/auth_profile/settings';
  static const String subscription = '/profile_navigation/auth_profile/subscription';
  static const String payment = '/profile_navigation/auth_profile/payment';

  // Unauthorized Profile
  static const String unauthorizedProfile = '/profile_navigation/unauthorized_profile';
  static const String signUp = '/profile_navigation/unauthorized_profile/signup';
  static const String phoneVerification = '/profile_navigation/unauthorized_profile/phone_verification';
}