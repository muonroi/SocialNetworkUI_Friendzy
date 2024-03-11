import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/login/login_upload_screen/models/login_upload_photo_item_model.dart';
import 'package:muonroi_friends/widget/common_function/images.dart';
import 'package:muonroi_friends/widget/custom_elevated_button.dart';
import 'package:muonroi_friends/widget/custom_image_view.dart';

// ignore: must_be_immutable
class UploadPhotosItemWidget extends StatelessWidget {
  const UploadPhotosItemWidget({
    Key? key,
    required this.uploadPhotoItemHeight,
    required this.uploadPhotoItemWidth,
    required this.uploadPhotoItemButtonHeight,
    required this.uploadPhotoItemButtonWidth,
    required this.title,
    required this.radius,
    required this.imagePath,
    required this.onPressed,
    required this.stt,
    required this.image,
  }) : super(
          key: key,
        );
  final double uploadPhotoItemHeight;
  final double uploadPhotoItemWidth;
  final double uploadPhotoItemButtonHeight;
  final double uploadPhotoItemButtonWidth;
  final String title;
  final double radius;
  final int stt;
  final String imagePath;
  final ImageProvider image;
  final void Function(LoginUploadPhotosItemModel request) onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: uploadPhotoItemWidth,
      height: uploadPhotoItemHeight,
      margin: const EdgeInsets.all(8.0),
      padding: EdgeInsets.symmetric(
        horizontal: 34.h,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: appTheme.gray400,
          image: DecorationImage(image: image, fit: BoxFit.fill)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 10.h),
              child: _buildChangePhoto(context, uploadPhotoItemButtonWidth,
                  uploadPhotoItemButtonHeight, title, imagePath, onPressed)),
        ],
      ),
    );
  }

  Widget _buildChangePhoto(
      BuildContext context,
      double uploadPhotoItemButtonWidth,
      double uploadPhotoItemButtonHeight,
      String title,
      String imagePath,
      void Function(LoginUploadPhotosItemModel request) callback) {
    return CustomElevatedButton(
        height: uploadPhotoItemButtonHeight,
        width: uploadPhotoItemButtonWidth,
        text: title,
        leftIcon: Container(
          margin: EdgeInsets.only(right: 2.h),
          child: CustomImageView(
            imagePath: imagePath,
          ),
        ),
        buttonStyle: CustomButtonStyles.fillOnErrorContainer,
        buttonTextStyle: theme.textTheme.titleSmall!,
        onPressed: () async {
          var file = await pickImage();
          if (file != null) {
            callback(
              LoginUploadPhotosItemModel(
                file: file,
                stt: stt,
                name: file.path.split('/').last,
                path: file.path,
              ),
            );
          }
        });
  }
}
