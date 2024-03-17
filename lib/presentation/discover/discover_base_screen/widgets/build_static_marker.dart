part of '../discover_base_screen.dart';

Marker _buildStaticMarker(LatLng latLng, String imageUrl, int index) {
  return StaticMarker(
    child: index == 0
        ? Container(
            foregroundDecoration: BoxDecoration(
              border: Border.all(color: appTheme.purple200, width: 5),
              borderRadius: BorderRadius.circular(25),
            ),
            child: CustomImageView(
              imagePath: imageUrl,
              width: 55.h,
              height: 55.v,
              radius: BorderRadius.circular(25),
              fit: BoxFit.fill,
            ),
          )
        : CustomImageView(
            imagePath: imageUrl,
            width: 50.h,
            height: 50.v,
            radius: BorderRadius.circular(25),
          ),
    latLng: latLng,
    bearing: 0,
  );
}
