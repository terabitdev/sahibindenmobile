import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/real_estate_360_real_estate_index_bloc.dart';
import 'models/expandablelista_item_model.dart';
import 'models/expandablelistd_item_model.dart';
import 'models/real_estate_360_real_estate_index_model.dart';
import 'realestate_two_tab_page.dart';
import 'widgets/expandablelista_item_widget.dart';
import 'widgets/expandablelistd_item_widget.dart';

class RealEstate360RealEstateIndexScreen extends StatefulWidget {
  const RealEstate360RealEstateIndexScreen({Key? key})
      : super(
    key: key,
  );

  @override
  RealEstate360RealEstateIndexScreenState createState() =>
      RealEstate360RealEstateIndexScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<RealEstate360RealEstateIndexBloc>(
      create: (context) =>
      RealEstate360RealEstateIndexBloc(RealEstate360RealEstateIndexState(
        realEstate360RealEstateIndexModelObj:
        RealEstate360RealEstateIndexModel(),
      ))
        ..add(RealEstate360RealEstateIndexInitialEvent()),
      child: RealEstate360RealEstateIndexScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class RealEstate360RealEstateIndexScreenState
    extends State<RealEstate360RealEstateIndexScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
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
          child: SingleChildScrollView(
            child: Container(
              height: 2054.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _buildStackronniegeor(context),
                  Padding(
                    padding: EdgeInsets.only(top: 518.h),
                    child: BlocSelector<
                        RealEstate360RealEstateIndexBloc,
                        RealEstate360RealEstateIndexState,
                        RealEstate360RealEstateIndexModel?>(
                      selector: (state) =>
                      state.realEstate360RealEstateIndexModelObj,
                      builder: (context, realEstate360RealEstateIndexModelObj) {
                        return CustomDropDown(
                          width: 354.h,
                          icon: Container(
                            margin: EdgeInsets.only(left: 16.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFramePrimary,
                              height: 14.h,
                              width: 14.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                          iconSize: 14.h,
                          hintText: "msg_m2_price_for_sale".tr,
                          alignment: Alignment.topCenter,
                          items: realEstate360RealEstateIndexModelObj
                              ?.dropdownItemList4 ??
                              [],
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 14.h,
                            vertical: 10.h,
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 476.h),
                      child: Text(
                        "msg_february_2025_real".tr,
                        style: CustomTextStyles.titleSmall_1,
                      ),
                    ),
                  ),
                  _buildColumnduration(context),
                  _buildColumnthe5most(context),
                  _buildColumnthecounti(context),
                  _buildTabbarview(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 58.h,
      leadingWidth: 50.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20SolidOnprimary,
        margin: EdgeInsets.only(left: 30.h),
      ),
      title: AppbarSubtitleThree(
        text: "msg_real_estate_index".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
      styleType: Style.bgFillPrimary,
    );
  }

  /// Section Widget
  Widget _buildStackronniegeor(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 454.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRonnieGeorge9,
              height: 454.h,
              width: double.maxFinite,
            ),
            Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(horizontal: 18.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_house_for_sale".tr,
                    style: CustomTextStyles.labelLargeBlack900_2,
                  ),
                  SizedBox(height: 10.h),
                  BlocSelector<
                      RealEstate360RealEstateIndexBloc,
                      RealEstate360RealEstateIndexState,
                      RealEstate360RealEstateIndexModel?>(
                    selector: (state) =>
                    state.realEstate360RealEstateIndexModelObj,
                    builder: (context, realEstate360RealEstateIndexModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.only(left: 16.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFramePrimary,
                            height: 14.h,
                            width: 14.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        iconSize: 14.h,
                        hintText: "lbl_house_for_sale".tr,
                        items: realEstate360RealEstateIndexModelObj
                            ?.dropdownItemList ??
                            [],
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 14.h,
                          vertical: 10.h,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "lbl_province".tr,
                    style: CustomTextStyles.labelLargeBlack900_2,
                  ),
                  SizedBox(height: 10.h),
                  BlocSelector<
                      RealEstate360RealEstateIndexBloc,
                      RealEstate360RealEstateIndexState,
                      RealEstate360RealEstateIndexModel?>(
                    selector: (state) =>
                    state.realEstate360RealEstateIndexModelObj,
                    builder: (context, realEstate360RealEstateIndexModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.only(left: 16.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFramePrimary,
                            height: 14.h,
                            width: 14.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        iconSize: 14.h,
                        hintText: "lbl_province".tr,
                        items: realEstate360RealEstateIndexModelObj
                            ?.dropdownItemList1 ??
                            [],
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 14.h,
                          vertical: 10.h,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "lbl_district".tr,
                    style: CustomTextStyles.labelLargeBlack900_2,
                  ),
                  SizedBox(height: 10.h),
                  BlocSelector<
                      RealEstate360RealEstateIndexBloc,
                      RealEstate360RealEstateIndexState,
                      RealEstate360RealEstateIndexModel?>(
                    selector: (state) =>
                    state.realEstate360RealEstateIndexModelObj,
                    builder: (context, realEstate360RealEstateIndexModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.only(left: 16.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFramePrimary,
                            height: 14.h,
                            width: 14.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        iconSize: 14.h,
                        hintText: "lbl_district".tr,
                        items: realEstate360RealEstateIndexModelObj
                            ?.dropdownItemList2 ??
                            [],
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 14.h,
                          vertical: 10.h,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    "lbl_neighbourhood".tr,
                    style: CustomTextStyles.labelLargeBlack900_2,
                  ),
                  SizedBox(height: 10.h),
                  BlocSelector<
                      RealEstate360RealEstateIndexBloc,
                      RealEstate360RealEstateIndexState,
                      RealEstate360RealEstateIndexModel?>(
                    selector: (state) =>
                    state.realEstate360RealEstateIndexModelObj,
                    builder: (context, realEstate360RealEstateIndexModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.only(left: 16.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFramePrimary,
                            height: 14.h,
                            width: 14.h,
                            fit: BoxFit.contain,
                          ),
                        ),
                        iconSize: 14.h,
                        hintText: "lbl_neighbourhood".tr,
                        items: realEstate360RealEstateIndexModelObj
                            ?.dropdownItemList3 ??
                            [],
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 14.h,
                          vertical: 10.h,
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20.h),
                  CustomElevatedButton(
                    text: "lbl_index_creation".tr,
                    buttonStyle: CustomButtonStyles.fillPrimary,
                    buttonTextStyle: CustomTextStyles.labelLargeOnPrimary_1,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnduration(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 588.h,
          right: 20.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 20.h,
        ),
        decoration: AppDecoration.cardshadow.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          spacing: 14,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 2.h),
            Text(
              "msg_last_1_year_change_m2".tr,
              style: CustomTextStyles.bodyMediumBluegray400_1,
            ),
            SizedBox(
              width: double.maxFinite,
              child: BlocSelector<
                  RealEstate360RealEstateIndexBloc,
                  RealEstate360RealEstateIndexState,
                  RealEstate360RealEstateIndexModel?>(
                selector: (state) => state.realEstate360RealEstateIndexModelObj,
                builder: (context, realEstate360RealEstateIndexModelObj) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: realEstate360RealEstateIndexModelObj
                        ?.expandablelistaItemList.length ??
                        0,
                    itemBuilder: (context, index) {
                      ExpandablelistaItemModel model =
                          realEstate360RealEstateIndexModelObj
                              ?.expandablelistaItemList[index] ??
                              ExpandablelistaItemModel();
                      return ExpandablelistaItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            ),
            Text(
              "lbl_show_all".tr,
              style: CustomTextStyles.bodyMediumPrimary,
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnthe5most(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 728.h,
      ),
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 16,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_the_5_most_valuable".tr,
            style: CustomTextStyles.bodyMediumBluegray400_1,
          ),
          SizedBox(
            width: double.maxFinite,
            child: BlocSelector<
                RealEstate360RealEstateIndexBloc,
                RealEstate360RealEstateIndexState,
                RealEstate360RealEstateIndexModel?>(
              selector: (state) => state.realEstate360RealEstateIndexModelObj,
              builder: (context, realEstate360RealEstateIndexModelObj) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: realEstate360RealEstateIndexModelObj
                      ?.expandablelistdItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    ExpandablelistdItemModel model =
                        realEstate360RealEstateIndexModelObj
                            ?.expandablelistdItemList[index] ??
                            ExpandablelistdItemModel();
                    return ExpandablelistdItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnthecounti(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 20.h,
        bottom: 428.h,
      ),
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 16,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "msg_the_counties_that".tr,
            style: CustomTextStyles.bodyMediumBluegray400_1,
          ),
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
                  fontSize: 15.fSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
                unselectedLabelColor: appTheme.black900,
                unselectedLabelStyle: TextStyle(
                  fontSize: 15.fSize,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
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
                    height: 30,
                    child: Container(
                      width: 98.h,
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Text(
                        "lbl_istanbul".tr,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Tab(
                    height: 30,
                    child: Container(
                      width: 90.h,
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Text(
                        "lbl_ankara".tr,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  Tab(
                    height: 30,
                    child: Container(
                      width: 70.h,
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Text(
                        "lbl_izmir".tr,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 160.h)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabbarview(BuildContext context) {
    return SizedBox(
      height: 614.h,
      child: TabBarView(
        controller: tabviewController,
        children: [
          Container(),
          RealestateTwoTabPage.builder(context),
          RealestateTwoTabPage.builder(context)
        ],
      ),
    );
  }
}
