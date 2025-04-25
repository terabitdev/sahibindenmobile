import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_switch.dart';
import 'bloc/my_mobile_notification_permissions_bloc.dart';
import 'models/my_mobile_notification_permissions_model.dart'; // ignore_for_file: must_be_immutable

class MyMobileNotificationPermissionsPage extends StatefulWidget {
  const MyMobileNotificationPermissionsPage({Key? key})
      : super(
    key: key,
  );

  @override
  MyMobileNotificationPermissionsPageState createState() =>
      MyMobileNotificationPermissionsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyMobileNotificationPermissionsBloc>(
      create: (context) => MyMobileNotificationPermissionsBloc(
          MyMobileNotificationPermissionsState(
            myMobileNotificationPermissionsModelObj:
            MyMobileNotificationPermissionsModel(),
          ))
        ..add(MyMobileNotificationPermissionsInitialEvent()),
      child: MyMobileNotificationPermissionsPage(),
    );
  }
}

class MyMobileNotificationPermissionsPageState
    extends State<MyMobileNotificationPermissionsPage>
    with AutomaticKeepAliveClientMixin<MyMobileNotificationPermissionsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(20.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [_buildRowsecondhandan(context)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowsecondhandan(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Text(
              "msg_second_hand_and".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelLargeOnPrimaryContainer,
            ),
          ),
          BlocSelector<MyMobileNotificationPermissionsBloc,
              MyMobileNotificationPermissionsState, bool?>(
            selector: (state) => state.isSelectedSwitch,
            builder: (context, isSelectedSwitch) {
              return CustomSwitch(
                margin: EdgeInsets.only(left: 16.h),
                value: isSelectedSwitch,
                onChange: (value) {
                  context
                      .read<MyMobileNotificationPermissionsBloc>()
                      .add(ChangeSwitchEvent(value: value));
                },
              );
            },
          )
        ],
      ),
    );
  }
}
