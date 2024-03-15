part of '../../discover_filter_bottom_sheet/discover_filter_bottom_sheet.dart';

class CustomDistanceSlider extends StatelessWidget {
  const CustomDistanceSlider({
    super.key,
    required this.ref,
  });

  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    return FlutterSlider(
      values: const [300],
      max: 500,
      min: 0,
      onDragging: (handlerIndex, lowerValue, upperValue) {
        final lowerValueAsInt = lowerValue.toDouble().toInt();
        ref
            .read(discoverFilterNotifier.notifier)
            .changeDistance('$lowerValueAsInt');
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
            imagePath: ImageConstant.imgIconNumDistance,
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
              '$lowerValueAsInt km',
              style: CustomTextStyles.titleSmallBold,
            ),
          );
        },
      ),
    );
  }
}
