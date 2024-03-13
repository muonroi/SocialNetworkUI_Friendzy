import 'package:flutter/material.dart';
import 'package:muonroi_friends/presentation/home/make_friend_screen/make_friend_screen.dart';
import 'package:muonroi_friends/presentation/home/make_friend_tab_screen/make_friend_tab_screen.dart';
import 'package:muonroi_friends/presentation/login/login_birthdate_screen/login_birthdate_screen.dart';
import 'package:muonroi_friends/presentation/login/login_gender_screen/login_gender_screen.dart';
import 'package:muonroi_friends/presentation/login/login_interest_screen/login_interest_screen.dart';
import 'package:muonroi_friends/presentation/login/login_method_screen/login_method_screen.dart';
import 'package:muonroi_friends/presentation/login/login_phone_number_screen/login_phone_number_screen.dart';
import 'package:muonroi_friends/presentation/login/login_set_name_screen/login_set_name_screen.dart';
import 'package:muonroi_friends/presentation/login/login_upload_screen/login_upload_screen.dart';
import 'package:muonroi_friends/presentation/login/login_validate_otp_screen/login_validate_otp_screen.dart';
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
  static const String homeMakeFriendScreen = '/home_make_friend_screen';
  static const String homeMakeFriendTabScreen = '/home_make_friend_tab_screen';
  static const String homeSearchPartnersScreen = '/home_search_partners_screen';
  // static const String loginOtpAuthenticationScreen =
  //     '/login_otp_authentication_screen';
  // static const String homeMakeFriendsPage = '/home_make_friends_page';
  // static const String homeMakeFriendsTabContainerScreen =
  //     '/home_make_friends_tab_container_screen';
  // static const String homeSearchPartnersPage = '/home_search_partners_page';
  // static const String homeSearchPartnersSwipeRightPage =
  //     '/home_search_partners_swipe_right_page';
  // static const String homeSearchPartnersSwipeLeftPage =
  //     '/home_search_partners_swipe_left_page';
  // static const String homeSearchPartnersSwipeLeftTabContainerScreen =
  //     '/home_search_partners_swipe_left_tab_container_screen';
  // static const String discoverScreen = '/discover_screen';
  // static const String discoverScrollSearchClickedPage =
  //     '/discover_scroll_search_clicked_page';
  // static const String discoverByInterestVoneScreen =
  //     '/discover_by_interest_vone_screen';
  // static const String discoverByInterestVtwoScreen =
  //     '/discover_by_interest_vtwo_screen';
  // static const String matchDatingScreen = '/match_dating_screen';
  // static const String connectMakeFriendsScreen = '/connect_make_friends_screen';
  // static const String matchesContainerScreen = '/matches_container_screen';
  // static const String matchesPage = '/matches_page';
  // static const String messagesScreen = '/messages_screen';
  // static const String firstTimeChatScreen = '/first_time_chat_screen';
  // static const String voiceChatScreen = '/voice_chat_screen';
  // static const String voiceChatReplyScreen = '/voice_chat_reply_screen';
  // static const String textChatScreen = '/text_chat_screen';
  // static const String textChatReplyScreen = '/text_chat_reply_screen';
  // static const String profileScreen = '/profile_screen';
  // static const String editProfileScreen = '/edit_profile_screen';
  // static const String languageScreen = '/language_screen';
  // static const String settingsScreen = '/settings_screen';
  // static const String appNavigationScreen = '/app_navigation_screen';
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
    homeMakeFriendScreen: (context) => const HomeMakeFriendsScreen(),
    homeMakeFriendTabScreen: (context) => const HomeMakeFriendsTabScreen(),
  };
}
