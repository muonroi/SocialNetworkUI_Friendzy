import 'package:flutter/material.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/localization/enums/localization_code.dart';
import 'package:muonroi_friends/presentation/login/login_upload_screen/models/login_upload_photo_item_model.dart';
import 'package:muonroi_friends/presentation/login/login_upload_screen/models/login_upload_photo_model.dart';
import 'package:muonroi_friends/presentation/login/login_upload_screen/notifier/login_upload_photo_notifier.dart';
import 'package:muonroi_friends/presentation/login/login_upload_screen/widgets/upload_photos_item_widget.dart';
import 'package:muonroi_friends/widget/app_bar/custom_app_bar.dart';
import 'package:muonroi_friends/widget/custom_verified.dart';
import 'package:muonroi_friends/widget/login/build_step_widget.dart';

class LoginUploadPhotosScreen extends ConsumerStatefulWidget {
  const LoginUploadPhotosScreen({Key? key}) : super(key: key);

  @override
  LoginUploadPhotosState createState() => LoginUploadPhotosState();
}

class LoginUploadPhotosState extends ConsumerState<LoginUploadPhotosScreen> {
  @override
  void initState() {
    loginUploadPhotoModels = [];
    super.initState();
  }

  void setImageUploadToList(LoginUploadPhotosItemModel request) {
    setState(() {
      loginUploadPhotoModels.add(request);
    });
  }

  late List<LoginUploadPhotosItemModel> loginUploadPhotoModels;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: buildAppBar(context),
            resizeToAvoidBottomInset: true,
            body: Stack(children: [
              Stack(children: [
                Column(
                  children: [
                    SizedBox(
                      width: 248.h,
                      height: 265.v,
                      child: UploadPhotosItemWidget(
                        stt: 0,
                        onPressed: setImageUploadToList,
                        uploadPhotoItemHeight: 190.v,
                        uploadPhotoItemWidth: 235.h,
                        uploadPhotoItemButtonHeight: 36.v,
                        uploadPhotoItemButtonWidth: 150.h,
                        title: LocalizationKeys.lblChangePhoto.name.tr,
                        radius: 12.0,
                        imagePath: ImageConstant.imgIconOnerrorcontainer16x16,
                        image: loginUploadPhotoModels.isEmpty
                            ? AssetImage(ImageConstant.imgIvanaCajina7)
                            : loginUploadPhotoModels
                                    .where((element) => element.stt == 0)
                                    .isEmpty
                                ? AssetImage(ImageConstant.imgIvanaCajina7)
                                : FileImage(loginUploadPhotoModels
                                    .firstWhere((element) => element.stt == 0)
                                    .file) as ImageProvider<Object>,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 250.h),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 125.h,
                        height: 132.5.v,
                        child: UploadPhotosItemWidget(
                          stt: 1,
                          onPressed: setImageUploadToList,
                          uploadPhotoItemHeight: 80.v,
                          uploadPhotoItemWidth: 127.5.h,
                          uploadPhotoItemButtonHeight: 25.v,
                          uploadPhotoItemButtonWidth: 60.h,
                          title: "",
                          radius: 12.0,
                          imagePath: ImageConstant.imgIconAdd,
                          image: loginUploadPhotoModels.isEmpty
                              ? AssetImage(ImageConstant.imgIvanaCajina7)
                              : loginUploadPhotoModels
                                      .where((element) => element.stt == 1)
                                      .isEmpty
                                  ? AssetImage(ImageConstant.imgIvanaCajina7)
                                  : FileImage(loginUploadPhotoModels
                                      .firstWhere((element) => element.stt == 1)
                                      .file) as ImageProvider<Object>,
                        ),
                      ),
                      SizedBox(
                        width: 125.h,
                        height: 132.5.v,
                        child: UploadPhotosItemWidget(
                          stt: 2,
                          onPressed: setImageUploadToList,
                          uploadPhotoItemHeight: 80.v,
                          uploadPhotoItemWidth: 127.5.h,
                          uploadPhotoItemButtonHeight: 25.v,
                          uploadPhotoItemButtonWidth: 100.h,
                          title: "",
                          radius: 12.0,
                          imagePath: ImageConstant.imgIconAdd,
                          image: loginUploadPhotoModels.isEmpty
                              ? AssetImage(ImageConstant.imgIvanaCajina7)
                              : loginUploadPhotoModels
                                      .where((element) => element.stt == 2)
                                      .isEmpty
                                  ? AssetImage(ImageConstant.imgIvanaCajina7)
                                  : FileImage(loginUploadPhotoModels
                                      .firstWhere((element) => element.stt == 2)
                                      .file) as ImageProvider<Object>,
                        ),
                      ),
                    ],
                  ),
                )
              ]),
              Container(
                margin: EdgeInsets.only(right: 5.h),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 125.h,
                        height: 132.5.v,
                        child: UploadPhotosItemWidget(
                          stt: 3,
                          onPressed: setImageUploadToList,
                          uploadPhotoItemHeight: 80.v,
                          uploadPhotoItemWidth: 127.5.h,
                          uploadPhotoItemButtonHeight: 25.v,
                          uploadPhotoItemButtonWidth: 100.h,
                          title: "",
                          radius: 12.0,
                          imagePath: ImageConstant.imgIconAdd,
                          image: loginUploadPhotoModels.isEmpty
                              ? AssetImage(ImageConstant.imgIvanaCajina7)
                              : loginUploadPhotoModels
                                      .where((element) => element.stt == 3)
                                      .isEmpty
                                  ? AssetImage(ImageConstant.imgIvanaCajina7)
                                  : FileImage(loginUploadPhotoModels
                                      .firstWhere((element) => element.stt == 3)
                                      .file) as ImageProvider<Object>,
                        ),
                      ),
                      SizedBox(
                        width: 125.h,
                        height: 132.5.v,
                        child: UploadPhotosItemWidget(
                          stt: 4,
                          onPressed: setImageUploadToList,
                          uploadPhotoItemHeight: 80.v,
                          uploadPhotoItemWidth: 127.5.h,
                          uploadPhotoItemButtonHeight: 25.v,
                          uploadPhotoItemButtonWidth: 100.h,
                          title: "",
                          radius: 12.0,
                          imagePath: ImageConstant.imgIconAdd,
                          image: loginUploadPhotoModels.isEmpty
                              ? AssetImage(ImageConstant.imgIvanaCajina7)
                              : loginUploadPhotoModels
                                      .where((element) => element.stt == 4)
                                      .isEmpty
                                  ? AssetImage(ImageConstant.imgIvanaCajina7)
                                  : FileImage(loginUploadPhotoModels
                                      .firstWhere((element) => element.stt == 4)
                                      .file) as ImageProvider<Object>,
                        ),
                      ),
                      SizedBox(
                        width: 125.h,
                        height: 132.5.v,
                        child: UploadPhotosItemWidget(
                          stt: 5,
                          onPressed: setImageUploadToList,
                          uploadPhotoItemHeight: 80.v,
                          uploadPhotoItemWidth: 127.5.h,
                          uploadPhotoItemButtonHeight: 25.v,
                          uploadPhotoItemButtonWidth: 100.h,
                          title: "",
                          radius: 12.0,
                          imagePath: ImageConstant.imgIconAdd,
                          image: loginUploadPhotoModels.isEmpty
                              ? AssetImage(ImageConstant.imgIvanaCajina7)
                              : loginUploadPhotoModels
                                      .where((element) => element.stt == 5)
                                      .isEmpty
                                  ? AssetImage(ImageConstant.imgIvanaCajina7)
                                  : FileImage(loginUploadPhotoModels
                                      .firstWhere((element) => element.stt == 5)
                                      .file) as ImageProvider<Object>,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 380.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.h, vertical: 17.v),
                  child: Column(
                    children: [
                      buildStep(context, LocalizationKeys.lbl55.name.tr, () {
                        ref.read(loginUploadPhotoNotifier).copyWith(
                            loginUploadPhotoModelObj: LoginUploadPhotoModel(
                                uploadPhotosItemList: loginUploadPhotoModels));
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const AlertDialog(
                              content: VerifiedWidget(),
                            );
                          },
                        );
                      }),
                      SizedBox(height: 15.v),
                      Container(
                        height: 6.v,
                        width: 327.h,
                        decoration: BoxDecoration(
                          color: appTheme.purple200.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(3.h),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(3.h),
                          child: LinearProgressIndicator(
                            value: 1.0,
                            backgroundColor:
                                appTheme.purple200.withOpacity(0.2),
                            valueColor: AlwaysStoppedAnimation<Color>(
                                appTheme.purple200),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ])));
  }
}
