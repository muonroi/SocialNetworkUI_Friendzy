part of '../login_gender_screen.dart';

Widget _buildSelectGender(BuildContext context, WidgetRef ref) {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    _buildGenderButton(
        context,
        ref,
        Gender.male,
        LocalizationKeys.lblMan.name.tr,
        ImageConstant.imgIcon,
        ref.watch(loginGenderNotifier).selectedGender?.props.firstOrNull == null
            ? false
            : ref.watch(loginGenderNotifier).selectedGender?.props.first
                    as Gender ==
                Gender.male),
    _buildGenderButton(
        context,
        ref,
        Gender.female,
        LocalizationKeys.lblWoman.name.tr,
        ImageConstant.imgLaptop,
        ref.watch(loginGenderNotifier).selectedGender?.props.firstOrNull == null
            ? false
            : ref.watch(loginGenderNotifier).selectedGender?.props.first
                    as Gender ==
                Gender.female),
  ]);
}
