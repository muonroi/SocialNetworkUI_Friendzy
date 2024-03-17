part of '../discover_interest_screen.dart';

class ImageInterestPeople extends StatelessWidget {
  final int index;
  final String imagePath;
  const ImageInterestPeople({
    super.key,
    required this.index,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: CustomImageView(
        margin: EdgeInsets.only(left: index * 24.h),
        height: 28.adaptSize,
        width: 28.adaptSize,
        imagePath: imagePath,
        radius: BorderRadiusStyle.roundedBorder16,
      ),
    );
  }
}
