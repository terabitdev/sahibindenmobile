import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/about_bloc.dart';
import 'models/about_model.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AboutBloc>(
      create: (context) => AboutBloc(
        AboutState(aboutModelObj: AboutModel()),
      )..add(AboutInitialEvent()),
      child: const AboutScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AboutBloc, AboutState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: theme.colorScheme.onPrimary.withAlpha(1),
          appBar: _buildAppbar(context),
          body: SafeArea(
            top: false,
            child: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.h),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.only(left: 20.h, top: 24.h, right: 20.h),
                      decoration: AppDecoration.outlineBlack.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder10,
                      ),
                      child: Column(
                        children: [
                          _buildOptionTile(
                            context,
                            label: "lbl_communication".tr,
                            onTap: () => onTapRowcommunicatio(context),
                          ),
                          _buildOptionTile(
                            context,
                            label: "msg_safe_shopping_tips".tr,
                            onTap: () => onTapRowsafeshopping(context),
                          ),
                          _buildOptionTile(
                            context,
                            label: "lbl_terms_of_use".tr,
                            onTap: () => onTapRowtermsofuse(context),
                          ),
                          _buildOptionTile(
                            context,
                            label: "msg_account_agreement".tr,
                            onTap: () => onTapRowaccount(context),
                          ),
                          _buildOptionTile(
                            context,
                            label: "msg_account_agreement".tr,
                            onTap: () => onTapRowaccount(context),
                          ),
                          _buildOptionTile(
                            context,
                            label: "msg_account_agreement".tr,
                            onTap: () => onTapRowaccount(context),
                          ),
                          _buildOptionTile(
                            context,
                            label: "msg_account_agreement".tr,
                            onTap: () => onTapRowaccount(context),
                          ),
                          _buildOptionTile(
                            context,
                            label: "lbl_privacy_policy".tr,
                            onTap: () => onTapRowprivacypolic(context),
                          ),
                          _buildOptionTile(
                            context,
                            label: "msg_protection_of_personal".tr,
                            onTap: () => onTapRowprotectionof(context),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 20.h),
                            decoration: AppDecoration.fillOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder14,
                            ),
                            width: double.maxFinite,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 4.h, bottom: 6.h),
                                  child: Text(
                                    "msg_open_source_license".tr,
                                    style: CustomTextStyles.labelLargeTeal900,
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
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20Solid,
        margin: EdgeInsets.only(left: 20.h),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_about".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  Widget _buildOptionTile(BuildContext context, {required String label, required VoidCallback onTap}) {
    return SizedBox(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 20.h),
          decoration: AppDecoration.fillOnPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder14,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 4.h, bottom: 4.h),
                child: Text(label, style: CustomTextStyles.labelLargeTeal900),
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
    );
  }

  void onTapRowcommunicatio(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.communicationScreen);
  }

  void onTapRowsafeshopping(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.safeShoppingTipsScreen);
  }

  void onTapRowtermsofuse(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.termsOfUseOneScreen);
  }

  void onTapRowaccount(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.accountAgreementScreen);
  }

  void onTapRowprivacypolic(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.helpGuideTwoScreen);
  }

  void onTapRowprotectionof(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.protectionOfPersonalDataScreen);
  }
}
