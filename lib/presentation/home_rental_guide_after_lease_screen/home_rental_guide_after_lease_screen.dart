import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/home_rental_guide_after_lease_bloc.dart';
import 'models/home_rental_guide_after_lease_model.dart';

class HomeRentalGuideAfterLeaseScreen extends StatelessWidget {
  const HomeRentalGuideAfterLeaseScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeRentalGuideAfterLeaseBloc>(
      create: (context) =>
      HomeRentalGuideAfterLeaseBloc(HomeRentalGuideAfterLeaseState(
        homeRentalGuideAfterLeaseModelObj: HomeRentalGuideAfterLeaseModel(),
      ))
        ..add(HomeRentalGuideAfterLeaseInitialEvent()),
      child: HomeRentalGuideAfterLeaseScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeRentalGuideAfterLeaseBloc,
        HomeRentalGuideAfterLeaseState>(
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
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 20.h,
                    right: 20.h,
                  ),
                  child: Column(
                    spacing: 18,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "msg_what_is_a_family".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall,
                      ),
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.only(
                          left: 24.h,
                          top: 20.h,
                          right: 24.h,
                        ),
                        decoration: AppDecoration.cardshadow.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10,
                        ),
                        child: Column(
                          spacing: 14,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img36052630611452734,
                              height: 142.h,
                              width: double.maxFinite,
                            ),
                            Text(
                              "msg_the_residence_where".tr,
                              maxLines: 12,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumBluegray400_1,
                            ),
                            Text(
                              "msg_how_to_put_a_family".tr,
                              style: theme.textTheme.titleSmall,
                            ),
                            Text(
                              "msg_in_order_to_add".tr,
                              maxLines: 17,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumBluegray400_1,
                            ),
                            Text(
                              "msg_can_a_house_with".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleSmall,
                            ),
                            Text(
                              "msg_the_house_which".tr,
                              maxLines: 18,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumBluegray400_1,
                            ),
                            Text(
                              "msg_how_to_terminate".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.titleSmall,
                            ),
                            Text(
                              "msg_an_application_to".tr,
                              maxLines: 24,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMediumBluegray400_1,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 34.h)
                    ],
                  ),
                ),
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
      height: 58.h,
      leadingWidth: 50.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20SolidOnprimary,
        margin: EdgeInsets.only(left: 30.h),
      ),
      title: AppbarSubtitleThree(
        text: "lbl_real_estate360".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
      styleType: Style.bgFillPrimary,
    );
  }
}
