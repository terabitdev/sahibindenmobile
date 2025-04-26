part of 'safe_e_commerce_one_bloc.dart';

/// Represents the state of SafeECommerceOne in the application.

// ignore_for_file: must_be_immutable
class SafeECommerceOneState extends Equatable {
  SafeECommerceOneState({this.safeECommerceOneModelObj});

  SafeECommerceOneModel? safeECommerceOneModelObj;

  @override
  List<Object?> get props => [safeECommerceOneModelObj];
  SafeECommerceOneState copyWith(
      {SafeECommerceOneModel? safeECommerceOneModelObj}) {
    return SafeECommerceOneState(
      safeECommerceOneModelObj:
      safeECommerceOneModelObj ?? this.safeECommerceOneModelObj,
    );
  }
}
