import 'package:flutter/material.dart';
import 'package:muonroi_friends/presentation/dating/dating_connect_friend_screen/dating_connect_friend_screen.dart';
import 'package:muonroi_friends/presentation/dating/dating_match_screen/dating_match_screen.dart';
import 'package:muonroi_friends/presentation/dating/dating_profile_detail_screen/dating_profile_detail_screen.dart';
import 'package:muonroi_friends/presentation/discover/discover_base_screen/discover_base_screen.dart';
import 'package:muonroi_friends/presentation/discover/discover_interest_screen/discover_interest_screen.dart';
import 'package:muonroi_friends/presentation/discover/discover_search_screen/discover_search_screen.dart';
import 'package:muonroi_friends/presentation/home/home_make_friend_tab_screen/home_make_friend_tab_screen.dart';
import 'package:muonroi_friends/presentation/login/login_birthdate_screen/login_birthdate_screen.dart';
import 'package:muonroi_friends/presentation/login/login_gender_screen/login_gender_screen.dart';
import 'package:muonroi_friends/presentation/login/login_interest_screen/login_interest_screen.dart';
import 'package:muonroi_friends/presentation/login/login_method_screen/login_method_screen.dart';
import 'package:muonroi_friends/presentation/login/login_phone_number_screen/login_phone_number_screen.dart';
import 'package:muonroi_friends/presentation/login/login_set_name_screen/login_set_name_screen.dart';
import 'package:muonroi_friends/presentation/login/login_upload_screen/login_upload_screen.dart';
import 'package:muonroi_friends/presentation/login/login_validate_otp_screen/login_validate_otp_screen.dart';
import 'package:muonroi_friends/presentation/message/first_message_screen/first_message_screen.dart';
import 'package:muonroi_friends/presentation/message/main_message_screen/main_message_screen.dart';
import 'package:muonroi_friends/presentation/onboarding/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:muonroi_friends/presentation/onboarding/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:muonroi_friends/presentation/onboarding/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:muonroi_friends/presentation/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String initialRoute = '/initialRoute';
  static const String spashScreen = '/spash_screen';
  static const String onboardingOneScreen = '/onboarding_one_screen';
  static const String onboardingTwoScreen = '/onboarding_two_screen';
  static const String onboardingThreeScreen = '/onboarding_three_screen';
  static const String loginPhoneNumberScreen = '/login_phone_number_screen';
  static const String loginValidateOtpCodeScreen =
      '/login_validate_otp_code_screen';
  static const String loginSetNameScreen = '/login_set_name_screen';
  static const String loginBirthdateScreen = '/login_birthdate_screen';

  static const String loginGenderScreen = '/login_gender_screen';
  static const String loginSelectInterestScreen =
      '/login_select_interest_screen';
  static const String loginUploadPhotoScreen = '/login_upload_photo_screen';
  static const String loginMethodScreen = '/login_method_screen';
  static const String homeMakeFriendTabScreen = '/home_make_friend_tab_screen';
  static const String homeSearchPartnersScreen = '/home_search_partners_screen';
  static const String discoverBaseScreen = '/discover_base_screen';
  static const String discoverSearchScreen = '/discover_search_screen';
  static const String discoverInterestScreen = '/discover_interest_screen';
  static const String datingMatchScreen = '/dating_match_screen';
  static const String datingConnectFriendScreen =
      '/dating_connect_friend_screen';
  static const String datingProfileDetailScreen =
      '/dating_profile_detail_screen';
  static const String mainMessageScreen = '/main_message_screen';
  static const String firstMessageScreen = '/first_message_screen';
  static Map<String, WidgetBuilder> routes = {
    spashScreen: (context) => const SplashScreen(),
    initialRoute: (context) => const SplashScreen(),
    onboardingOneScreen: (context) => const OnboardingOneScreen(),
    onboardingTwoScreen: (context) => const OnboardingTwoScreen(),
    onboardingThreeScreen: (context) => const OnboardingThreeScreen(),
    loginPhoneNumberScreen: (context) => const LoginPhoneNumberScreen(),
    loginValidateOtpCodeScreen: (context) => const LoginValidateOtpCodeScreen(),
    loginSetNameScreen: (context) => const LoginSetNameScreen(),
    loginBirthdateScreen: (context) => const LoginBirthdateScreen(),
    loginGenderScreen: (context) => const LoginGenderScreen(),
    loginSelectInterestScreen: (context) => const LoginSelectInterestScreen(),
    loginUploadPhotoScreen: (context) => const LoginUploadPhotosScreen(),
    loginMethodScreen: (context) => const LoginMethodScreen(),
    homeMakeFriendTabScreen: (context) => const HomeMakeFriendsTabScreen(),
    discoverBaseScreen: (context) => const DiscoverScreen(),
    discoverSearchScreen: (context) => const DiscoverScrollSearchClickedPage(),
    discoverInterestScreen: (context) => const DiscoverByInterestScreen(),
    datingMatchScreen: (context) => const MatchDatingScreen(),
    datingConnectFriendScreen: (context) => const ConnectMakeFriendsScreen(),
    datingProfileDetailScreen: (context) => const DatingProfileDetailScreen(),
    mainMessageScreen: (context) => const MainMessageScreen(),
    firstMessageScreen: (context) => const FirstTimeChatScreen(),
  };
}
