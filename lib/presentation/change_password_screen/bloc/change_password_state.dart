part of 'change_password_bloc.dart';

/// Represents the state of ChangePassword in the application.// ignore_for_file: must_be_immutable
class ChangePasswordState extends Equatable {
  ChangePasswordState(
      {this.passwordController,
      this.newpasswordController,
      this.passwordoneController,
      this.changePasswordModelObj});
  TextEditingController? passwordController;
  TextEditingController? newpasswordController;
  TextEditingController? passwordoneController;
  ChangePasswordModel? changePasswordModelObj;

  @override
  List<Object?> get props => [
        passwordController,
        newpasswordController,
        passwordoneController,
        changePasswordModelObj
      ];
  ChangePasswordState copyWith({
    TextEditingController? passwordController,
    TextEditingController? newpasswordController,
    TextEditingController? passwordoneController,
    ChangePasswordModel? changePasswordModelObj,
  }) {
    return ChangePasswordState(
      passwordController: passwordController ?? this.passwordController,
      newpasswordController:
          newpasswordController ?? this.newpasswordController,
      passwordoneController:
          passwordoneController ?? this.passwordoneController,
      changePasswordModelObj:
          changePasswordModelObj ?? this.changePasswordModelObj,
    );
  }
}
