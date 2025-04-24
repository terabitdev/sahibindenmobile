import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/corporate_account_bloc.dart';
import 'models/corporate_account_model.dart';
import 'models/expandablelistw_item_model.dart';
import 'widgets/expandablelistw_item_widget.dart';

class CorporateAccountScreen extends StatelessWidget {
  const CorporateAccountScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<CorporateAccountBloc>(
      create: (context) => CorporateAccountBloc(CorporateAccountState(
        corporateAccountModelObj: CorporateAccountModel(),
      ))
        ..add(CorporateAccountInitialEvent()),
      child: CorporateAccountScreen(),
    );
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
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  BlocSelector<CorporateAccountBloc, CorporateAccountState,
                      TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return CustomSearchView(
                        controller: searchController,
                        hintText: "lbl_search2".tr,
                        contentPadding:
                        EdgeInsets.fromLTRB(20.h, 14.h, 12.h, 14.h),
                      );
                    },
                  ),
                  _buildColumnshoppingc(context),
                  Text(
                    "msg_frequently_asked".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      spacing: 10,
                      children: [
                        _buildExpandablelistw(context),
                        _buildRowwhatsinthe(context)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildColumnwhatsinth(context),
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
        text: "msg_corporate_account".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumnshoppingc(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 24.h,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 10,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: GestureDetector(
              onTap: () {
                onTapRowshoppingcent(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 20.h,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          bottom: 6.h,
                        ),
                        child: Text(
                          "lbl_shopping_centre".tr,
                          style: CustomTextStyles.labelLargeTeal900,
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: 38.h,
                      width: 38.h,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.none,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: GestureDetector(
              onTap: () {
                onTapRowmyrealestate(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 20.h,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          bottom: 6.h,
                        ),
                        child: Text(
                          "msg_my_real_estate_office2".tr,
                          style: CustomTextStyles.labelLargeTeal900,
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: 38.h,
                      width: 38.h,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.none,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: GestureDetector(
              onTap: () {
                onTapRowmygallery(context);
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 20.h,
                ),
                decoration: AppDecoration.fillOnPrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 4.h,
                          bottom: 6.h,
                        ),
                        child: Text(
                          "lbl_my_gallery".tr,
                          style: CustomTextStyles.labelLargeTeal900,
                        ),
                      ),
                    ),
                    CustomIconButton(
                      height: 38.h,
                      width: 38.h,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.none,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildExpandablelistw(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: BlocSelector<CorporateAccountBloc, CorporateAccountState,
          CorporateAccountModel?>(
        selector: (state) => state.corporateAccountModelObj,
        builder: (context, corporateAccountModelObj) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount:
            corporateAccountModelObj?.expandablelistwItemList.length ?? 0,
            itemBuilder: (context, index) {
              ExpandablelistwItemModel model =
                  corporateAccountModelObj?.expandablelistwItemList[index] ??
                      ExpandablelistwItemModel();
              return ExpandablelistwItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRowwhatsinthe(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 12.h,
      ),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_what_s_in_the_real".tr,
            style: theme.textTheme.titleSmall,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
            height: 14.h,
            width: 16.h,
            margin: EdgeInsets.only(right: 2.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnwhatsinth(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 12.h),
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 12.h,
            ),
            decoration: AppDecoration.cardshadow.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "msg_what_s_in_the_real".tr,
                  style: theme.textTheme.titleSmall,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 14.h,
                  width: 16.h,
                  margin: EdgeInsets.only(right: 2.h),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the shoppingCentreScreen when the action is triggered.
  onTapRowshoppingcent(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.shoppingCentreScreen,
    );
  }

  /// Navigates to the myRealEstateOfficeScreen when the action is triggered.
  onTapRowmyrealestate(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.myRealEstateOfficeScreen,
    );
  }

  /// Navigates to the myGalleryScreen when the action is triggered.
  onTapRowmygallery(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.myGalleryScreen,
    );
  }
}
