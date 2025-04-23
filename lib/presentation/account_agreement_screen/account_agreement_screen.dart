import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/account_agreement_bloc.dart';
import 'models/account_agreement_model.dart';

class AccountAgreementScreen extends StatelessWidget {
  const AccountAgreementScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AccountAgreementBloc>(
      create: (context) => AccountAgreementBloc(
        AccountAgreementState(
          accountAgreementModelObj: AccountAgreementModel(),
        ),
      )..add(AccountAgreementInitialEvent()),
      child: AccountAgreementScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountAgreementBloc, AccountAgreementState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: theme.colorScheme.onPrimary.withValues(alpha: 1),
          appBar: _buildAppbar(context),
          body: SafeArea(
            top: false,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 20.h,
                top: 14.h,
                right: 20.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 24.h,
                      right: 20.h,
                    ),
                    decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildAgreementTile(
                          context,
                          text: "msg_individual_account".tr,
                        ),
                        _buildAgreementTile(
                          context,
                          text: "msg_corporate_account2".tr,
                        ),
                        _buildAgreementTile(
                          context,
                          text: "msg_my_real_estate_office".tr,
                          multiline: true,
                          maxWidth: 198.h,
                        ),
                        _buildAgreementTile(
                          context,
                          text: "msg_my_car_gallery_agreement".tr,
                        ),
                        _buildAgreementTile(
                          context,
                          text: "msg_annexes_to_the_contract".tr,
                        ),
                      ],
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

  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 44.h,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20Solid,
        margin: EdgeInsets.only(left: 20.h),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_account_agreement".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  Widget _buildAgreementTile(
      BuildContext context, {
        required String text,
        bool multiline = false,
        double? maxWidth,
      }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: multiline ? 16.h : 20.h,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 4.h,
                bottom: multiline ? 0 : 6.h,
              ),
              child: Container(
                width: maxWidth,
                child: Text(
                  text,
                  maxLines: multiline ? 2 : 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.labelLargeTeal900.copyWith(
                    height: multiline ? 1.39 : null,
                  ),
                ),
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
    );
  }
}
