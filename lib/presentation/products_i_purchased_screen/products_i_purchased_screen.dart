import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/products_i_purchased_bloc.dart';
import 'models/products_i_purchased_model.dart';

class ProductsIPurchasedScreen extends StatelessWidget {
  const ProductsIPurchasedScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductsIPurchasedBloc>(
      create: (context) => ProductsIPurchasedBloc(ProductsIPurchasedState(
        productsIPurchasedModelObj: ProductsIPurchasedModel(),
      ))
        ..add(ProductsIPurchasedInitialEvent()),
      child: ProductsIPurchasedScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsIPurchasedBloc, ProductsIPurchasedState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: theme.colorScheme.onPrimary.withValues(
            alpha: 1,
          ),
          appBar: _buildAppbar(context),
          body: SafeArea(
            top: false,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 20.h,
                top: 20.h,
                right: 20.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [_buildColumnvideocame(context)],
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
        text: "msg_products_i_purchased".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumnvideocame(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 32.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 18,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.h),
          CustomImageView(
            imagePath: ImageConstant.imgVideoCamera,
            height: 52.h,
            width: 54.h,
          ),
          Text(
            "msg_you_haven_t_made2".tr,
            style: theme.textTheme.titleSmall,
          )
        ],
      ),
    );
  }
}
