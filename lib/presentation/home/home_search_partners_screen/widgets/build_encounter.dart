part of '../../home_search_partners_screen/home_search_parent_screen.dart';

Widget _buildEncounters(BuildContext context,
    HomeSearchPartnersModel searchPartnersModel, WidgetRef ref) {
  return Container(
    height: 500.v,
    width: 343.h,
    margin: EdgeInsets.symmetric(horizontal: 16.h),
    child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: EdgeInsets.all(8.h),
            decoration: AppDecoration.outlinePrimary.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder24,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 380.v,
                  width: 327.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 380.v,
                          width: 311.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              24.h,
                            ),
                          ),
                          child: CarouselSlider(
                            items: searchPartnersModel.images
                                .map((element) => CustomImageView(
                                      imagePath: element,
                                      height: 380.v,
                                      width: 311.h,
                                      radius: BorderRadius.circular(
                                        24.h,
                                      ),
                                      alignment: Alignment.center,
                                    ))
                                .toList(),
                            options: CarouselOptions(
                              height: 450,
                              aspectRatio: 16 / 9,
                              viewportFraction: 0.8,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 3),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.3,
                              scrollDirection: Axis.horizontal,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.all(10.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder24,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomOutlinedButton(
                                    height: 40.v,
                                    width: 70.h,
                                    text: '${searchPartnersModel.distance} km',
                                    margin: EdgeInsets.only(bottom: 8.v),
                                  ),
                                  Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: const EdgeInsets.all(0),
                                    color: theme.colorScheme.onErrorContainer
                                        .withOpacity(0.2),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: theme
                                            .colorScheme.onErrorContainer
                                            .withOpacity(0.3),
                                        width: 5.h,
                                      ),
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder24,
                                    ),
                                    child: Container(
                                      height: 48.adaptSize,
                                      width: 48.adaptSize,
                                      decoration: AppDecoration
                                          .outlineOnErrorContainer
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder24,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              height: 48.adaptSize,
                                              width: 48.adaptSize,
                                              child: CircularProgressIndicator(
                                                value: 0.5,
                                                backgroundColor: theme
                                                    .colorScheme
                                                    .onErrorContainer
                                                    .withOpacity(1),
                                                color: theme.colorScheme
                                                    .onErrorContainer
                                                    .withOpacity(1),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              '${searchPartnersModel.percentMatch}%',
                                              style: theme.textTheme.titleSmall,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 96.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  height: 64.v,
                                  width: 6.h,
                                  child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                          height: 64.v,
                                          child: VerticalDivider(
                                            width: 6.h,
                                            thickness: 6.v,
                                            color: theme
                                                .colorScheme.onErrorContainer
                                                .withOpacity(0.3),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          height: 32.v,
                                          child: VerticalDivider(
                                            width: 6.h,
                                            thickness: 6.v,
                                            color: theme
                                                .colorScheme.onErrorContainer
                                                .withOpacity(1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 42.v),
                              _buildSocials(
                                  context,
                                  searchPartnersModel.facebookUrl ?? '',
                                  searchPartnersModel.instagramUrl ?? ''),
                              SizedBox(height: 9.v),
                              Text(
                                searchPartnersModel.name,
                                style: theme.textTheme.headlineSmall,
                              ),
                              SizedBox(height: 9.v),
                              Opacity(
                                opacity: 0.9,
                                child: Text(
                                  searchPartnersModel.address.toUpperCase(),
                                  style: CustomTextStyles
                                      .bodyMediumOnErrorContainer_1,
                                ),
                              ),
                              SizedBox(height: 8.v),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 47.h),
                  child: _buildButtons(context, ref),
                ),
                SizedBox(height: 16.v),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
