import 'package:flutter/material.dart';
import 'package:sahibindenmobile/presentation/comment_management_screen/comment_management_screen.dart';
import 'package:sahibindenmobile/presentation/my_delivery_billing_address_one_screen/my_delivery_billing_address_one_screen.dart';
import 'package:sahibindenmobile/presentation/safe_e_commerce_three_screen/safe_e_commerce_three_screen.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../safe_e_commerce_one_page/safe_e_commerce_one_page.dart';
import 'bloc/safe_e_commerce_bloc.dart';
import 'models/safe_e_commerce_model.dart';
import 'safe_tab_page.dart';

class SafeECommerceScreen extends StatefulWidget {
  const SafeECommerceScreen({Key? key})
      : super(
    key: key,
  );

  @override
  SafeECommerceScreenState createState() => SafeECommerceScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SafeECommerceBloc>(
      create: (context) => SafeECommerceBloc(SafeECommerceState(
        safeECommerceModelObj: SafeECommerceModel(),
      ))
        ..add(SafeECommerceInitialEvent()),
      child: SafeECommerceScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class SafeECommerceScreenState extends State<SafeECommerceScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
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
              SizedBox(height: 6.h),
              _buildTabview(context),
              Expanded(
                child: Container(
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      SafeTabPage.builder(context),
                      SafeECommerceOnePage.builder(context),
                      MyDeliveryBillingAddressOneScreen.builder(context),
                      CommentManagementScreen.builder(context),
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
      height: 44.h,
      leadingWidth: 34.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20Solid,
        margin: EdgeInsets.only(left: 14.h),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_safe_e_commerce".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      width: 392.h,
      decoration: BoxDecoration(
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
                  "msg_my_purchase_transactions".tr,
                ),
              ),
            ),
            Tab(
              height: 34,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Text(
                  "msg_my_sales_transactions".tr,
                ),
              ),
            ),
            Tab(
              height: 34,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Text(
                  "msg_my_delivery_billing2".tr,
                ),
              ),
            ),
            Tab(
              height: 34,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Text(
                  "msg_comment_management".tr,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
