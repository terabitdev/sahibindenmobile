import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/vehicle_damage_inquiry_bloc.dart';
import 'models/vehicle_damage_inquiry_model.dart';
import 'vehicledamage_tab_page.dart';

class VehicleDamageInquiryScreen extends StatefulWidget {
  const VehicleDamageInquiryScreen({Key? key})
      : super(
    key: key,
  );

  @override
  VehicleDamageInquiryScreenState createState() =>
      VehicleDamageInquiryScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<VehicleDamageInquiryBloc>(
      create: (context) => VehicleDamageInquiryBloc(VehicleDamageInquiryState(
        vehicleDamageInquiryModelObj: VehicleDamageInquiryModel(),
      ))
        ..add(VehicleDamageInquiryInitialEvent()),
      child: VehicleDamageInquiryScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class VehicleDamageInquiryScreenState extends State<VehicleDamageInquiryScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimary.withValues(
        alpha: 1,
      ),
      resizeToAvoidBottomInset: false,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: Form(
          key: _formKey,
          child: Container(
            height: 1126.h,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                _buildColumnvehicleda(context),
                Container(
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      VehicledamageTabPage.builder(context),
                      VehicledamageTabPage.builder(context)
                    ],
                  ),
                )
              ],
            ),
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
        text: "msg_vehicle_damage_inquiry".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumnvehicleda(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 20.h,
          right: 20.h,
        ),
        padding: EdgeInsets.all(24.h),
        decoration: AppDecoration.cardshadow.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          spacing: 16,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "msg_vehicle_damage_inquiry".tr,
              style: CustomTextStyles.titleSmallSemiBold_1,
            ),
            Text(
              "msg_you_can_learn_the".tr,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallBlack90012.copyWith(
                height: 1.66,
              ),
            ),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(24.h),
              decoration: AppDecoration.cardshadow.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        14.h,
                      ),
                      border: Border.all(
                        color: theme.colorScheme.primary,
                        width: 1.h,
                        strokeAlign: BorderSide.strokeAlignOutside,
                      ),
                    ),
                    width: double.maxFinite,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        14.h,
                      ),
                      child: TabBar(
                        controller: tabviewController,
                        labelPadding: EdgeInsets.zero,
                        labelColor: theme.colorScheme.onPrimary.withValues(
                          alpha: 1,
                        ),
                        labelStyle: TextStyle(
                          fontSize: 9.fSize,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                        unselectedLabelColor: theme.colorScheme.primary,
                        unselectedLabelStyle: TextStyle(
                          fontSize: 9.fSize,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicator: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(
                            14.h,
                          ),
                        ),
                        dividerHeight: 0.0,
                        tabs: [
                          Tab(
                            height: 28,
                            child: Container(
                              width: 128.h,
                              padding: EdgeInsets.symmetric(horizontal: 8.h),
                              child: Text(
                                "msg_vehicle_damage_inquiry".tr,
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Tab(
                            height: 28,
                            child: Container(
                              width: 114.h,
                              padding: EdgeInsets.symmetric(horizontal: 8.h),
                              child: Text(
                                "msg_vehicle_detail_inquiry".tr,
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 180.h)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
