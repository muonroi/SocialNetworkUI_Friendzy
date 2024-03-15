import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/presentation/discover/discover_interest_screen/notifier/discover_interest_notifier.dart';
import 'package:muonroi_friends/widget/app_bar/appbar_leading_iconbutton.dart';
import 'package:muonroi_friends/widget/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/common_function/number.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';
part 'widgets/image_interest_people_widget.dart';
part 'widgets/interest_people_widget.dart';

class DiscoverByInterestScreen extends ConsumerStatefulWidget {
  const DiscoverByInterestScreen({Key? key}) : super(key: key);
  @override
  DiscoverByInterestScreenState createState() =>
      DiscoverByInterestScreenState();
}

class DiscoverByInterestScreenState
    extends ConsumerState<DiscoverByInterestScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
      appBar: AppBar(
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Title(
            color: Colors.black,
            child: Text(LocalizationKeys.msgDiscoverByInterest.name.tr,
                style: CustomTextStyles.headlineSmallOnPrimaryContainer)),
      ),
      body: SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 15.v),
            child: Column(
              children: [
                Column(
                    children: List.generate(
                        ref
                            .watch(discoverByInterestNotifier)
                            .discoverByInterestModelObj!
                            .length, (index) {
                  return Column(children: [
                    InterestPeople(
                        context: context,
                        interestTitle: ref
                            .watch(discoverByInterestNotifier)
                            .discoverByInterestModelObj![index]
                            .interestTitle,
                        interestPeople: ref
                            .watch(discoverByInterestNotifier)
                            .discoverByInterestModelObj![index]
                            .interestPeople,
                        interestImage: ref
                            .watch(discoverByInterestNotifier)
                            .discoverByInterestModelObj![index]
                            .interestImage,
                        peopleImages: ref
                            .watch(discoverByInterestNotifier)
                            .discoverByInterestModelObj![index]
                            .peopleImages),
                    const Opacity(opacity: 0.08, child: Divider())
                  ]);
                })),
              ],
            )),
      ),
    ));
  }
}
