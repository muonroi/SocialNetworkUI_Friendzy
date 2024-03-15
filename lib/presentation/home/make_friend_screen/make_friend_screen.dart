import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/home/make_friend_screen/models/travel_item_model.dart';
import 'package:muonroi_friends/presentation/home/make_friend_screen/notifier/make_friend_notifier.dart';
import 'package:muonroi_friends/presentation/home/make_friend_screen/widgets/travel_item_widget.dart';

class HomeMakeFriendsScreen extends ConsumerStatefulWidget {
  const HomeMakeFriendsScreen({Key? key})
      : super(
          key: key,
        );
  @override
  HomeMakeFriendsState createState() => HomeMakeFriendsState();
}

class HomeMakeFriendsState extends ConsumerState<HomeMakeFriendsScreen>
    with AutomaticKeepAliveClientMixin<HomeMakeFriendsScreen> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildTravel(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTravel(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Consumer(
          builder: (context, ref, _) {
            return ListView.separated(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 16.v,
                );
              },
              itemCount: ref
                      .watch(homeMakeFriendsNotifier)
                      .homeMakeFriendsModelObj
                      ?.travelItemList
                      .length ??
                  0,
              itemBuilder: (context, index) {
                TravelItemModel model = ref
                        .watch(homeMakeFriendsNotifier)
                        .homeMakeFriendsModelObj
                        ?.travelItemList[index] ??
                    TravelItemModel(
                      id: '0',
                      postTitle:
                          "If you could live anywhere in the world, where would you pick?",
                      postImage:
                          'https://i0.wp.com/picjumbo.com/wp-content/uploads/beautiful-nature-mountain-scenery-with-flowers-free-photo.jpg?w=600&quality=80',
                      author: "Miranda Kehlani",
                      address: "STUTTGART",
                      icon: ImageConstant.likeIcon,
                    );
                return TravelItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
