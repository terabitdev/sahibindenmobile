part of 'sign_up_bloc.dart';

/// Represents the state of SignUp in the application.

// ignore_for_file: must_be_immutable
class SignUpState extends Equatable {
  SignUpState(
      {this.fullNameController,
        this.emailController,
        this.passwordController,
        this.signUpModelObj});

  TextEditingController? fullNameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignUpModel? signUpModelObj;

  @override
  List<Object?> get props =>
      [fullNameController, emailController, passwordController, signUpModelObj];
  SignUpState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      fullNameController: fullNameController ?? this.fullNameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
