import 'package:equatable/equatable.dart';
import 'package:muonroi_friends/core/app_export.dart';
import 'package:muonroi_friends/presentation/login/login_upload_screen/models/login_upload_photo_model.dart';

part 'login_upload_photo_state.dart';

final loginUploadPhotoNotifier =
    StateNotifierProvider<LoginUploadPhotoNotifier, LoginUploadPhotoState>(
        (ref) => LoginUploadPhotoNotifier(LoginUploadPhotoState(
            loginUploadPhotoModelObj: LoginUploadPhotoModel())));

/// A notifier that manages the state of a LoginUploadPhoto according to the event that is dispatched to it.
class LoginUploadPhotoNotifier extends StateNotifier<LoginUploadPhotoState> {
  LoginUploadPhotoNotifier(LoginUploadPhotoState state) : super(state);
  void setLoginUploadPhotoModelObj(
      LoginUploadPhotoModel loginUploadPhotoModelObj) {
    state = state.copyWith(loginUploadPhotoModelObj: loginUploadPhotoModelObj);
  }
}
