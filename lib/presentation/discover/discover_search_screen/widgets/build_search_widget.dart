part of '../discover_search_screen.dart';

Widget _buildSearchBar(BuildContext context) {
  return Align(
    alignment: Alignment.centerLeft,
    child: SizedBox(
      height: 72.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(top: 16.v),
                      child: Consumer(
                        builder: (context, ref, _) {
                          return CustomSearchView(
                            controller: ref
                                .watch(discoverSearchNotifier)
                                .searchController,
                            hintText: LocalizationKeys.lblSearch.name.tr,
                            onChanged: (value) {},
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      top: 20.v,
                      bottom: 4.v,
                    ),
                    child: CustomIconButton(
                      height: 48.adaptSize,
                      width: 48.adaptSize,
                      padding: EdgeInsets.all(12.h),
                      decoration: IconButtonStyleHelper.outlinePrimaryTL24,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIconSettingDiscover,
                        onTap: () {
                          Navigator.pop(context);
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return const DiscoverFilterBottomSheet();
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
