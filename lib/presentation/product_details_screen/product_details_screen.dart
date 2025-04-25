import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/product_details_bloc.dart';
import 'models/facilities_item_model.dart';
import 'models/product_details_item_model.dart';
import 'models/product_details_model.dart';
import 'widgets/facilities_item_widget.dart';
import 'widgets/product_details_item_widget.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductDetailsBloc>(
      create: (context) => ProductDetailsBloc(ProductDetailsState(
        productDetailsModelObj: ProductDetailsModel(),
      ))
        ..add(ProductDetailsInitialEvent()),
      child: ProductDetailsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimary.withValues(
        alpha: 1,
      ),
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 8.h),
          child: Column(
            spacing: 18,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: 518.h,
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 10.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFramesForYour,
                      height: 518.h,
                      width: double.maxFinite,
                      radius: BorderRadius.circular(
                        30.h,
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.all(22.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(
                            width: double.maxFinite,
                            child: _buildAppbar(context),
                          ),
                          Spacer(),
                          _buildProductdetails(context)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              _buildTitleone(context),
              _buildRowrent(context),
              SizedBox(
                width: double.maxFinite,
                child: Divider(
                  color: appTheme.blueGray50,
                  indent: 20.h,
                  endIndent: 20.h,
                ),
              ),
              _buildFacilities(context)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 50.h,
      leadingWidth: 48.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgArrowLeft,
        width: 48.h,
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgFavorite,
          width: 48.h,
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildProductdetails(BuildContext context) {
    return BlocSelector<ProductDetailsBloc, ProductDetailsState,
        ProductDetailsModel?>(
      selector: (state) => state.productDetailsModelObj,
      builder: (context, productDetailsModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 4.h,
            );
          },
          itemCount: productDetailsModelObj?.productDetailsItemList.length ?? 0,
          itemBuilder: (context, index) {
            ProductDetailsItemModel model =
                productDetailsModelObj?.productDetailsItemList[index] ??
                    ProductDetailsItemModel();
            return ProductDetailsItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTitleone(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        spacing: 2,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_highett_common".tr,
                  style: CustomTextStyles.headlineSmallLatoBluegray800Bold,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "lbl_1_395_000_tl".tr,
                    style: CustomTextStyles.titleLargeMontserratBluegray800,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLinkedinBlueGray80005,
                  height: 12.h,
                  width: 12.h,
                ),
                Text(
                  "msg_avenue_west_side".tr,
                  style: CustomTextStyles.bodySmallRalewayBluegray60001,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowrent(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              children: [
                CustomElevatedButton(
                  height: 46.h,
                  width: 72.h,
                  text: "lbl_rent".tr,
                  buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                  buttonTextStyle: CustomTextStyles.labelMediumRalewayOnPrimary,
                ),
                CustomElevatedButton(
                  height: 46.h,
                  width: 66.h,
                  text: "lbl_buy".tr,
                  margin: EdgeInsets.only(left: 22.h),
                  buttonStyle: CustomButtonStyles.fillGray,
                  buttonTextStyle:
                  CustomTextStyles.labelMediumRalewayBluegray800,
                )
              ],
            ),
          ),
          CustomIconButton(
            height: 50.h,
            width: 50.h,
            padding: EdgeInsets.all(14.h),
            decoration: IconButtonStyleHelper.fillGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgSettings,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFacilities(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: BlocSelector<ProductDetailsBloc, ProductDetailsState,
            ProductDetailsModel?>(
          selector: (state) => state.productDetailsModelObj,
          builder: (context, productDetailsModelObj) {
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                direction: Axis.horizontal,
                runSpacing: 10.h,
                spacing: 10.h,
                children: List<Widget>.generate(
                  productDetailsModelObj?.facilitiesItemList.length ?? 0,
                      (index) {
                    FacilitiesItemModel model =
                        productDetailsModelObj?.facilitiesItemList[index] ??
                            FacilitiesItemModel();
                    return FacilitiesItemWidget(
                      model,
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
