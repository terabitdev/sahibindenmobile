import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/credit_bloc.dart';
import 'creditconsumer_tab_page.dart';
import 'models/credit_model.dart';

class CreditScreen extends StatefulWidget {
  const CreditScreen({Key? key})
      : super(
    key: key,
  );

  @override
  CreditScreenState createState() => CreditScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<CreditBloc>(
      create: (context) => CreditBloc(CreditState(
        creditModelObj: CreditModel(),
      ))
        ..add(CreditInitialEvent()),
      child: CreditScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class CreditScreenState extends State<CreditScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

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
        child: Container(
          height: 898.h,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              _buildColumneasilycho(context),
              Container(
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    CreditconsumerTabPage.builder(context),
                    CreditconsumerTabPage.builder(context)
                  ],
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
        text: "lbl_credit".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumneasilycho(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 14.h,
          right: 20.h,
        ),
        padding: EdgeInsets.all(24.h),
        decoration: AppDecoration.cardshadow.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          spacing: 14,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "msg_easily_choose_the".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall,
              ),
            ),
            Text(
              "msg_when_purchasing".tr,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallBlack90012,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.h),
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
                    fontSize: 12.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelColor: theme.colorScheme.primary,
                  unselectedLabelStyle: TextStyle(
                    fontSize: 12.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
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
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Text(
                          "lbl_consumer_loan".tr,
                        ),
                      ),
                    ),
                    Tab(
                      height: 28,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Text(
                          "lbl_vehicle_loan".tr,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 182.h)
          ],
        ),
      ),
    );
  }
}
