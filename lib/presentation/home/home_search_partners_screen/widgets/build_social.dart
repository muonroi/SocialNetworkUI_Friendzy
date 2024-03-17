part of '../home_search_parent_screen.dart';

Widget _buildSocials(
    BuildContext context, String facebookUrl, String instagramUrl) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.blue,
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconFacebook,
          height: 24.adaptSize,
          width: 24.adaptSize,
          border: Border.all(color: Colors.blue, width: 1),
          radius: BorderRadius.circular(50),
          onTap: () async {
            var result = Uri.tryParse(facebookUrl)!.data != null
                ? await canLaunchUrl(Uri.tryParse(facebookUrl)!)
                : false;
            if (result) {
              await launchUrl(Uri.parse(facebookUrl),
                  mode: LaunchMode.inAppBrowserView);
            } else {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    content: Center(
                        child: Text(LocalizationKeys.msgUrlInvalid.name.tr,
                            textAlign: TextAlign.center))));
              }
            }
          },
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 16.h),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(3.0)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFF601CE),
                  Color(0xFFF60E3C),
                  Color(0xFFF6B902),
                ])),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconIg,
          height: 24.adaptSize,
          width: 24.adaptSize,
          onTap: () async {
            var result = Uri.tryParse(instagramUrl)!.data != null
                ? await canLaunchUrl(Uri.tryParse(instagramUrl)!)
                : false;
            if (result) {
              await launchUrl(Uri.parse(instagramUrl),
                  mode: LaunchMode.inAppBrowserView);
            } else {
              if (context.mounted) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    content: Center(
                        child: Text(LocalizationKeys.msgUrlInvalid.name.tr,
                            textAlign: TextAlign.center))));
              }
            }
          },
        ),
      ),
    ],
  );
}
