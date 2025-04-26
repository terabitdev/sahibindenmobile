import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/zero_vehicle_world_zero_vehicle_bloc.dart';
import 'models/zero_vehicle_world_zero_vehicle_model.dart';
import 'zerovehicle_tab_page.dart';

class ZeroVehicleWorldZeroVehicleScreen extends StatefulWidget {
  const ZeroVehicleWorldZeroVehicleScreen({Key? key})
      : super(
    key: key,
  );

  @override
  ZeroVehicleWorldZeroVehicleScreenState createState() =>
      ZeroVehicleWorldZeroVehicleScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ZeroVehicleWorldZeroVehicleBloc>(
      create: (context) =>
      ZeroVehicleWorldZeroVehicleBloc(ZeroVehicleWorldZeroVehicleState(
        zeroVehicleWorldZeroVehicleModelObj: ZeroVehicleWorldZeroVehicleModel(),
      ))
        ..add(ZeroVehicleWorldZeroVehicleInitialEvent()),
      child: ZeroVehicleWorldZeroVehicleScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class ZeroVehicleWorldZeroVehicleScreenState
    extends State<ZeroVehicleWorldZeroVehicleScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  int tabIndex = 0;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 12, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
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
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "lbl_filter".tr,
                  style: CustomTextStyles.titleSmallPrimary_1,
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_the_2025_new_vehicle".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      TextSpan(
                        text: "lbl_all_brands".tr,
                        style: CustomTextStyles.titleSmallPrimary,
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 16.h),
              _buildTabview(context),
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      ZerovehicleTabPage.builder(context),
                      ZerovehicleTabPage.builder(context),
                      ZerovehicleTabPage.builder(context),
                      ZerovehicleTabPage.builder(context),
                      ZerovehicleTabPage.builder(context),
                      ZerovehicleTabPage.builder(context),
                      ZerovehicleTabPage.builder(context),
                      ZerovehicleTabPage.builder(context),
                      ZerovehicleTabPage.builder(context),
                      ZerovehicleTabPage.builder(context),
                      ZerovehicleTabPage.builder(context),
                      ZerovehicleTabPage.builder(context)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
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
        text: "msg_vehicle_launch_schedule".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      width: 372.h,
      margin: EdgeInsets.only(left: 20.h),
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        labelColor: appTheme.gray100,
        labelStyle: TextStyle(
          fontSize: 10.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.blueGray800,
        unselectedLabelStyle: TextStyle(
          fontSize: 10.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
        tabs: [
          Tab(
            height: 46,
            child: Container(
              alignment: Alignment.center,
              decoration: tabIndex == 0
                  ? BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ))
                  : BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 18.h,
                ),
                child: Text(
                  "lbl_january".tr,
                ),
              ),
            ),
          ),
          Tab(
            height: 46,
            child: Container(
              alignment: Alignment.center,
              decoration: tabIndex == 1
                  ? BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ))
                  : BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 18.h,
                ),
                child: Text(
                  "lbl_february".tr,
                ),
              ),
            ),
          ),
          Tab(
            height: 46,
            child: Container(
              alignment: Alignment.center,
              decoration: tabIndex == 2
                  ? BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ))
                  : BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 18.h,
                ),
                child: Text(
                  "lbl_march".tr,
                ),
              ),
            ),
          ),
          Tab(
            height: 46,
            child: Container(
              alignment: Alignment.center,
              decoration: tabIndex == 3
                  ? BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ))
                  : BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 18.h,
                ),
                child: Text(
                  "lbl_april".tr,
                ),
              ),
            ),
          ),
          Tab(
            height: 46,
            child: Container(
              alignment: Alignment.center,
              decoration: tabIndex == 4
                  ? BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ))
                  : BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 18.h,
                ),
                child: Text(
                  "lbl_may".tr,
                ),
              ),
            ),
          ),
          Tab(
            height: 46,
            child: Container(
              alignment: Alignment.center,
              decoration: tabIndex == 5
                  ? BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ))
                  : BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 18.h,
                ),
                child: Text(
                  "lbl_june".tr,
                ),
              ),
            ),
          ),
          Tab(
            height: 46,
            child: Container(
              alignment: Alignment.center,
              decoration: tabIndex == 6
                  ? BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ))
                  : BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 18.h,
                ),
                child: Text(
                  "lbl_july".tr,
                ),
              ),
            ),
          ),
          Tab(
            height: 46,
            child: Container(
              alignment: Alignment.center,
              decoration: tabIndex == 7
                  ? BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ))
                  : BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 18.h,
                ),
                child: Text(
                  "lbl_august".tr,
                ),
              ),
            ),
          ),
          Tab(
            height: 46,
            child: Container(
              alignment: Alignment.center,
              decoration: tabIndex == 8
                  ? BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ))
                  : BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 18.h,
                ),
                child: Text(
                  "lbl_september".tr,
                ),
              ),
            ),
          ),
          Tab(
            height: 46,
            child: Container(
              alignment: Alignment.center,
              decoration: tabIndex == 9
                  ? BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ))
                  : BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 18.h,
                ),
                child: Text(
                  "lbl_october".tr,
                ),
              ),
            ),
          ),
          Tab(
            height: 46,
            child: Container(
              alignment: Alignment.center,
              decoration: tabIndex == 10
                  ? BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ))
                  : BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 18.h,
                ),
                child: Text(
                  "lbl_november".tr,
                ),
              ),
            ),
          ),
          Tab(
            height: 46,
            child: Container(
              alignment: Alignment.center,
              decoration: tabIndex == 11
                  ? BoxDecoration(
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.circular(
                    20.h,
                  ))
                  : BoxDecoration(
                color: appTheme.gray100,
                borderRadius: BorderRadius.circular(
                  20.h,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 18.h,
                ),
                child: Text(
                  "lbl_december".tr,
                ),
              ),
            ),
          )
        ],
        indicatorColor: Colors.transparent,
        onTap: (index) {
          tabIndex = index;
          setState(() {});
        },
      ),
    );
  }
}
