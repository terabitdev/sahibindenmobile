part of 'my_mobile_notification_permissions_bloc.dart';

/// Represents the state of MyMobileNotificationPermissions in the application.

// ignore_for_file: must_be_immutable
class MyMobileNotificationPermissionsState extends Equatable {
  MyMobileNotificationPermissionsState(
      {this.isSelectedSwitch = false,
        this.myMobileNotificationPermissionsModelObj});

  MyMobileNotificationPermissionsModel? myMobileNotificationPermissionsModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props =>
      [isSelectedSwitch, myMobileNotificationPermissionsModelObj];
  MyMobileNotificationPermissionsState copyWith({
    bool? isSelectedSwitch,
    MyMobileNotificationPermissionsModel?
    myMobileNotificationPermissionsModelObj,
  }) {
    return MyMobileNotificationPermissionsState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      myMobileNotificationPermissionsModelObj:
      myMobileNotificationPermissionsModelObj ??
          this.myMobileNotificationPermissionsModelObj,
    );
  }
}
