import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_switch.dart';
import 'bloc/message_read_information_two_bloc.dart';
import 'models/message_read_information_two_model.dart'; // ignore_for_file: must_be_immutable

class MessageReadInformationTwoPage extends StatefulWidget {
  const MessageReadInformationTwoPage({Key? key})
      : super(
    key: key,
  );

  @override
  MessageReadInformationTwoPageState createState() =>
      MessageReadInformationTwoPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MessageReadInformationTwoBloc>(
      create: (context) =>
      MessageReadInformationTwoBloc(MessageReadInformationTwoState(
        messageReadInformationTwoModelObj: MessageReadInformationTwoModel(),
      ))
        ..add(MessageReadInformationTwoInitialEvent()),
      child: MessageReadInformationTwoPage(),
    );
  }
}

class MessageReadInformationTwoPageState
    extends State<MessageReadInformationTwoPage>
    with AutomaticKeepAliveClientMixin<MessageReadInformationTwoPage> {
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
            children: [_buildColumnmessagere(context)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnmessagere(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 8.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 16,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 14.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "msg_message_read_information".tr,
                style: theme.textTheme.titleMedium,
              ),
              BlocSelector<MessageReadInformationTwoBloc,
                  MessageReadInformationTwoState, bool?>(
                selector: (state) => state.isSelectedSwitch,
                builder: (context, isSelectedSwitch) {
                  return CustomSwitch(
                    margin: EdgeInsets.only(left: 16.h),
                    value: isSelectedSwitch,
                    onChange: (value) {
                      context
                          .read<MessageReadInformationTwoBloc>()
                          .add(ChangeSwitchEvent(value: value));
                    },
                  );
                },
              )
            ],
          ),
          SizedBox(
            width: 304.h,
            child: Text(
              "msg_people_who_have".tr,
              maxLines: 9,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }
}
