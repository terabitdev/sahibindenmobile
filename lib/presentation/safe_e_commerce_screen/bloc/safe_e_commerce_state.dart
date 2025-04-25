part of 'safe_e_commerce_bloc.dart';

/// Represents the state of SafeECommerce in the application.

// ignore_for_file: must_be_immutable
class SafeECommerceState extends Equatable {
  SafeECommerceState({this.safeTabModelObj, this.safeECommerceModelObj});

  SafeECommerceModel? safeECommerceModelObj;

  SafeTabModel? safeTabModelObj;

  @override
  List<Object?> get props => [safeTabModelObj, safeECommerceModelObj];
  SafeECommerceState copyWith({
    SafeTabModel? safeTabModelObj,
    SafeECommerceModel? safeECommerceModelObj,
  }) {
    return SafeECommerceState(
      safeTabModelObj: safeTabModelObj ?? this.safeTabModelObj,
      safeECommerceModelObj:
      safeECommerceModelObj ?? this.safeECommerceModelObj,
    );
  }
}
