part of 'login_upload_photo_notifier.dart';

// ignore: must_be_immutable
class LoginUploadPhotoState extends Equatable {
  LoginUploadPhotoState({this.loginUploadPhotoModelObj});
  LoginUploadPhotoModel? loginUploadPhotoModelObj;
  @override
  List<Object?> get props => [
        loginUploadPhotoModelObj,
      ];
  LoginUploadPhotoState copyWith(
      {LoginUploadPhotoModel? loginUploadPhotoModelObj}) {
    return LoginUploadPhotoState(
      loginUploadPhotoModelObj:
          loginUploadPhotoModelObj ?? this.loginUploadPhotoModelObj,
    );
  }
}
