import 'package:flutter/material.dart';
import 'package:muonroi_friends/presentation/login_phone_number_screen/login_phone_number_screen.dart';
import 'package:muonroi_friends/presentation/onboarding_one_screen/onboarding_one_screen.dart';
import 'package:muonroi_friends/presentation/onboarding_three_screen/onboarding_three_screen.dart';
import 'package:muonroi_friends/presentation/onboarding_two_screen/onboarding_two_screen.dart';
import 'package:muonroi_friends/presentation/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String initialRoute = '/initialRoute';
  static const String spashScreen = '/spash_screen';
  static const String onboardingOneScreen = '/onboarding_one_screen';
  static const String onboardingTwoScreen = '/onboarding_two_screen';
  static const String onboardingThreeScreen = '/onboarding_three_screen';
  static const String loginPhoneNumberScreen = '/login_phone_number_screen';
  // static const String createAccountOtpCodeScreen =
  //     '/create_account_otp_code_screen';
  // static const String createAccountNameScreen = '/create_account_name_screen';
  // static const String createAccountBirthdateScreen =
  //     '/create_account_birthdate_screen';
  // static const String createAccountGenderScreen =
  //     '/create_account_gender_screen';
  // static const String createAccountSelectInterestScreen =
  //     '/create_account_select_interest_screen';
  // static const String createAccountUploadPhotoScreen =
  //     '/create_account_upload_photo_screen';
  // static const String loginEmptyStateScreen = '/login_empty_state_screen';
  // static const String loginActiveStateScreen = '/login_active_state_screen';
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
  };
}
