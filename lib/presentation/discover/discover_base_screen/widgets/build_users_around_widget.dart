part of '../discover_base_screen.dart';

Widget _buildUsersAround(
    BuildContext context,
    String styleString,
    CameraPosition currentPosition,
    VietmapController? currentUserController,
    Function(VietmapController)? onMapCreated,
    WidgetRef ref) {
  return Align(
    alignment: Alignment.topCenter,
    child: Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LocalizationKeys.lblAroundMe.name.tr,
            style: CustomTextStyles.titleLargeOnPrimaryContainer,
          ),
          SizedBox(height: 5.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: LocalizationKeys.lblPeopleWith.name.tr,
                  style: CustomTextStyles.bodyMediumff6c727f,
                ),
                TextSpan(
                  text: LocalizationKeys.lbl.name.tr,
                  style: CustomTextStyles.bodyMediumffdd88cf,
                ),
                TextSpan(
                  text: LocalizationKeys.lblMusic.name.tr,
                  style: CustomTextStyles.bodyMediumffdd88cf,
                ),
                TextSpan(
                  text: LocalizationKeys.lbl2.name.tr,
                  style: CustomTextStyles.bodyMediumffdd88cf,
                ),
                TextSpan(
                  text: LocalizationKeys.msgInterestAround.name.tr,
                  style: CustomTextStyles.bodyMediumff6c727f,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 53.v),
          Container(
              height: 335.v,
              width: 440.h,
              margin: EdgeInsets.only(right: 16.h),
              child: Stack(children: [
                VietmapGL(
                  doubleClickZoomEnabled: true,
                  myLocationRenderMode: MyLocationRenderMode.GPS,
                  myLocationTrackingMode: MyLocationTrackingMode.TrackingGPS,
                  myLocationEnabled: true,
                  styleString: styleString,
                  trackCameraPosition: true,
                  onMapCreated: onMapCreated,
                  compassEnabled: false,
                  onMapRenderedCallback: () {},
                  initialCameraPosition: currentPosition,
                  onMapClick: (point, coordinates) async {
                    var data = await currentUserController
                        ?.queryRenderedFeatures(point: point);
                    log(data.toString());
                  },
                ),
                if (currentUserController == null)
                  const SizedBox.shrink()
                else
                  MarkerLayer(
                      ignorePointer: true,
                      mapController: currentUserController,
                      markers: List.generate(
                          ref
                              .watch(discoverAroundNotifier)
                              .discoverAroundModelObj!
                              .userDiscoverAroundModelList
                              .length, (index) {
                        var latLng = LatLng(
                            ref
                                .watch(discoverAroundNotifier)
                                .discoverAroundModelObj!
                                .userDiscoverAroundModelList[index]
                                .latitude,
                            ref
                                .watch(discoverAroundNotifier)
                                .discoverAroundModelObj!
                                .userDiscoverAroundModelList[index]
                                .longitude);
                        var imageUrl = ref
                            .watch(discoverAroundNotifier)
                            .discoverAroundModelObj!
                            .userDiscoverAroundModelList[index]
                            .imageUrl;
                        return _buildStaticMarker(latLng, imageUrl, index);
                      })),
                // Positioned(
                //   right: 10.h,
                //   bottom: 10.v,
                //   child: Container(
                //       decoration: BoxDecoration(
                //           color: appTheme.gray400,
                //           border: Border.all(
                //             color: appTheme.gray400,
                //             width: 1,
                //           ),
                //           borderRadius: BorderRadius.circular(30.0)),
                //       child: CustomImageView(
                //         width: 30.h,
                //         imagePath: ImageConstant.imgIconCurrentLocation,
                //         onTap: () {
                //           currentUserController?.moveCamera(
                //               CameraUpdate.newCameraPosition(currentPosition));
                //         },
                //       )),
                // )
              ]))
        ],
      ),
    ),
  );
}
