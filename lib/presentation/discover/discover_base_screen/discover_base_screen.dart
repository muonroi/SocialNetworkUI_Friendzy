import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/presentation/discover/discover_base_screen/models/interest_item_model.dart';
import 'package:muonroi_friends/presentation/discover/discover_base_screen/models/new_user_item_model.dart';
import 'package:muonroi_friends/presentation/discover/discover_base_screen/notifier/discover_base_notifier.dart';
import 'package:muonroi_friends/presentation/discover/discover_base_screen/notifier/discover_base_user_around_notifier.dart';
import 'package:muonroi_friends/presentation/discover/discover_base_screen/widgets/interest_item_widget.dart';
import 'package:muonroi_friends/presentation/discover/discover_base_screen/widgets/new_user_item_widget.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';
import 'package:vietmap_flutter_gl/vietmap_flutter_gl.dart';
part 'widgets/build_category_widget.dart';
part 'widgets/build_interest_widget.dart';
part 'widgets/build_static_marker.dart';
part 'widgets/build_user_story_widget.dart';
part 'widgets/build_users_around_widget.dart';

class DiscoverScreen extends ConsumerStatefulWidget {
  const DiscoverScreen({Key? key})
      : super(
          key: key,
        );
  @override
  DiscoverScreenState createState() => DiscoverScreenState();
}

class DiscoverScreenState extends ConsumerState<DiscoverScreen> {
  void _onMapCreated(VietmapController controller) {
    _currentUserController = controller;
    setState(() {});
  }

  @override
  void initState() {
    _styleString = "${dotenv.env['style_vietmap']}${dotenv.env['apikey']}"
        .replaceAll('null', '');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _currentPosition = CameraPosition(
        target: LatLng(
            ref
                .watch(discoverAroundNotifier)
                .discoverAroundModelObj!
                .userDiscoverAroundModelList[0]
                .latitude,
            ref
                .watch(discoverAroundNotifier)
                .discoverAroundModelObj!
                .userDiscoverAroundModelList[0]
                .longitude),
        zoom: 13);
  }

  late String _styleString;
  late CameraPosition? _currentPosition;
  VietmapController? _currentUserController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeUtils.width,
      child: SingleChildScrollView(
        padding: EdgeInsets.only(top: 21.v),
        child: Column(
          children: [
            _buildUsersStory(context),
            SizedBox(height: 23.v),
            _buildInterest(context),
            SizedBox(height: 15.v),
            _buildCategory(context),
            SizedBox(height: 23.v),
            Stack(children: [
              _buildUsersAround(context, _styleString, _currentPosition!,
                  _currentUserController, _onMapCreated, ref),
              Positioned.fill(
                  child: Container(
                color: Colors.transparent,
              ))
            ]),
          ],
        ),
      ),
    );
  }
}
