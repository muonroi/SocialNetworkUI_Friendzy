import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/presentation/login/login_upload_screen/models/login_upload_photo_item_model.dart';

// ignore: must_be_immutable
class LoginUploadPhotoModel extends Equatable {
  LoginUploadPhotoModel({this.uploadPhotosItemList = const []});
  List<LoginUploadPhotosItemModel> uploadPhotosItemList;
  LoginUploadPhotoModel copyWith(
      {List<LoginUploadPhotosItemModel>? uploadPhotosItemList}) {
    return LoginUploadPhotoModel(
      uploadPhotosItemList: uploadPhotosItemList ?? this.uploadPhotosItemList,
    );
  }

  @override
  List<Object?> get props => [uploadPhotosItemList];
}
