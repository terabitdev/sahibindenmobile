import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../message_read_information_two_page/message_read_information_two_page.dart';
import '../my_mobile_notification_permissions_page/my_mobile_notification_permissions_page.dart';
import 'bloc/information_bloc.dart';
import 'informationinfo_tab_page.dart';
import 'models/information_model.dart';

class InformationScreen extends StatefulWidget {
  const InformationScreen({Key? key})
      : super(
    key: key,
  );

  @override
  InformationScreenState createState() => InformationScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<InformationBloc>(
      create: (context) => InformationBloc(InformationState(
        informationModelObj: InformationModel(),
      ))
        ..add(InformationInitialEvent()),
      child: InformationScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class InformationScreenState extends State<InformationScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InformationBloc, InformationState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: theme.colorScheme.onPrimary.withValues(
            alpha: 1,
          ),
          appBar: _buildAppbar(context),
          body: SafeArea(
            top: false,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  _buildTabview(context),
                  Expanded(
                    child: Container(
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          Container(),
                          Container(),
                          InformationinfoTabPage.builder(context),
                          MyMobileNotificationPermissionsPage.builder(context),
                          MessageReadInformationTwoPage.builder(context)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20Solid,
        margin: EdgeInsets.only(left: 20.h),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_information".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      width: 372.h,
      margin: EdgeInsets.only(left: 20.h),
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary.withValues(
          alpha: 1,
        ),
        borderRadius: BorderRadius.circular(
          10.h,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          10.h,
        ),
        child: TabBar(
          controller: tabviewController,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          labelColor: appTheme.gray90001,
          labelStyle: TextStyle(
            fontSize: 14.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelColor: appTheme.gray90001.withValues(
            alpha: 0.7,
          ),
          unselectedLabelStyle: TextStyle(
            fontSize: 14.fSize,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
          indicator: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: appTheme.blueA700,
                width: 2.h,
              ),
            ),
          ),
          dividerHeight: 0.0,
          tabs: [
            Tab(
              height: 34,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Text(
                  "lbl_messages".tr,
                ),
              ),
            ),
            Tab(
              height: 34,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Text(
                  "lbl_get_messages".tr,
                ),
              ),
            ),
            Tab(
              height: 34,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Text(
                  "lbl_information".tr,
                ),
              ),
            ),
            Tab(
              height: 34,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Text(
                  "msg_my_mobile_notifications".tr,
                ),
              ),
            ),
            Tab(
              height: 34,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Text(
                  "msg_message_read_information".tr,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
