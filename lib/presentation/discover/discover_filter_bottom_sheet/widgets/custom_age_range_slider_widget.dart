part of '../../discover_filter_bottom_sheet/discover_filter_bottom_sheet.dart';

class CustomAgeRangeSlider extends StatelessWidget {
  const CustomAgeRangeSlider({
    super.key,
    required this.ref,
  });
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return FlutterSlider(
      values: const [18, 30],
      rangeSlider: true,
      max: 70,
      min: 16,
      onDragging: (handlerIndex, lowerValue, upperValue) {
        final minAge = lowerValue.toDouble().toInt();
        final maxAge = upperValue.toDouble().toInt();
        ref
            .read(discoverFilterNotifier.notifier)
            .changeAgeRange('$minAge-$maxAge');
      },
      handler: FlutterSliderHandler(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Material(
          type: MaterialType.circle,
          color: appTheme.purple200,
          elevation: 0,
          surfaceTintColor: appTheme.purple200,
          shadowColor: appTheme.purple200,
          child: CustomImageView(
            imagePath: ImageConstant.imgIconNumAge,
            height: 24.adaptSize,
            width: 24.adaptSize,
            fit: BoxFit.fill,
          ),
        ),
      ),
      rightHandler: FlutterSliderHandler(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: Material(
          type: MaterialType.circle,
          color: appTheme.purple200,
          elevation: 0,
          surfaceTintColor: appTheme.purple200,
          shadowColor: appTheme.purple200,
          child: CustomImageView(
            imagePath: ImageConstant.imgIconNumAge,
            height: 24.adaptSize,
            width: 24.adaptSize,
            fit: BoxFit.fill,
          ),
        ),
      ),
      trackBar: FlutterSliderTrackBar(
        activeTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: appTheme.purple200,
        ),
        inactiveTrackBar: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: appTheme.indigo50,
        ),
        inactiveTrackBarHeight: 8,
        activeTrackBarHeight: 8,
      ),
      tooltip: FlutterSliderTooltip(
        custom: (value) {
          final lowerValueAsInt = value.toDouble().toInt();
          return Container(
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              color: appTheme.purple200,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              '$lowerValueAsInt',
              style: CustomTextStyles.titleSmallBold,
            ),
          );
        },
      ),
    );
  }
}
