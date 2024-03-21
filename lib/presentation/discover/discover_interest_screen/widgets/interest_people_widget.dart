part of '../discover_interest_screen.dart';

class InterestPeople extends StatelessWidget {
  const InterestPeople({
    super.key,
    required this.context,
    required this.interestTitle,
    required this.interestPeople,
    required this.interestImage,
    required this.peopleImages,
  });

  final BuildContext context;
  final String interestTitle;
  final int interestPeople;
  final String interestImage;
  final List<String?>? peopleImages;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.fillOnErrorContainer,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 2.v, bottom: 8.v),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(interestTitle,
                            style: CustomTextStyles.titleMediumffdd88cf),
                        SizedBox(height: 9.v),
                        SizedBox(
                            width: 190.h,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      height: 32.v,
                                      width: 104.h,
                                      child: Stack(
                                          alignment: Alignment.centerLeft,
                                          children: peopleImages != null
                                              ? peopleImages!
                                                  .asMap()
                                                  .entries
                                                  .map((e) =>
                                                      ImageInterestPeople(
                                                          index: e.key,
                                                          imagePath: e.value!))
                                                  .toList()
                                              : [])),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 8.v, bottom: 6.v, left: 8.h),
                                      child: Text(
                                          '${convertToK(interestPeople)} ${LocalizationKeys.lblPeople2.name.tr}',
                                          style: CustomTextStyles
                                              .bodyMediumBluegray300_1))
                                ]))
                      ])),
              CustomImageView(
                imagePath: interestImage,
                height: 64.v,
                width: 80.h,
                radius: BorderRadius.circular(12.h),
              ),
            ]));
  }
}
