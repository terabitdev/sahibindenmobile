import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../my_product_offers_one_page/my_product_offers_one_page.dart';
import 'bloc/my_product_offers_bloc.dart';
import 'models/my_product_offers_model.dart';
import 'myproduct_two_tab_page.dart';

class MyProductOffersScreen extends StatefulWidget {
  const MyProductOffersScreen({Key? key})
      : super(
    key: key,
  );

  @override
  MyProductOffersScreenState createState() => MyProductOffersScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MyProductOffersBloc>(
      create: (context) => MyProductOffersBloc(MyProductOffersState(
        myProductOffersModelObj: MyProductOffersModel(),
      ))
        ..add(MyProductOffersInitialEvent()),
      child: MyProductOffersScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class MyProductOffersScreenState extends State<MyProductOffersScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MyProductOffersBloc, MyProductOffersState>(
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
                children: [
                  SizedBox(height: 20.h),
                  _buildTabview(context),
                  Expanded(
                    child: Container(
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          MyproductTwoTabPage.builder(context),
                          MyProductOffersOnePage.builder(context)
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
      leadingWidth: 34.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20Solid,
        margin: EdgeInsets.only(left: 14.h),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_my_product_offers".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 20.h,
        right: 14.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10.h,
        ),
      ),
      width: double.maxFinite,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          10.h,
        ),
        child: TabBar(
          controller: tabviewController,
          labelPadding: EdgeInsets.zero,
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
          indicatorSize: TabBarIndicatorSize.tab,
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
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Text(
                  "lbl_i_am_a_seller".tr,
                ),
              ),
            ),
            Tab(
              height: 34,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Text(
                  "lbl_i_am_a_buyer".tr,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
