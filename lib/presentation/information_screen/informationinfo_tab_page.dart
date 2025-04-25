import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/information_bloc.dart';
import 'models/informationinfo_tab_model.dart';

class InformationinfoTabPage extends StatefulWidget {
  const InformationinfoTabPage({Key? key})
      : super(
    key: key,
  );

  @override
  InformationinfoTabPageState createState() => InformationinfoTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InformationBloc>(
      create: (context) => InformationBloc(InformationState(
        informationinfoTabModelObj: InformationinfoTabModel(),
      ))
        ..add(InformationInitialEvent()),
      child: InformationinfoTabPage(),
    );
  }
}

class InformationinfoTabPageState extends State<InformationinfoTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      child: Column(
        children: [_buildColumnnoinforma(context)],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnnoinforma(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 108.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg_no_information_found".tr,
            style: theme.textTheme.titleSmall,
          )
        ],
      ),
    );
  }
}
