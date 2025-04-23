import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/account_cancellation_bloc.dart';
import 'models/account_cancellation_model.dart';

class AccountCancellationScreen extends StatelessWidget {
  const AccountCancellationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AccountCancellationBloc>(
      create: (context) => AccountCancellationBloc(AccountCancellationState(
        accountCancellationModelObj: AccountCancellationModel(),
      ))..add(AccountCancellationInitialEvent()),
      child: AccountCancellationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountCancellationBloc, AccountCancellationState>(
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
                spacing: 10,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_account_cancellation".tr,
                    style: CustomTextStyles.titleSmallSemiBold_1,
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 24.h,
                      right: 24.h,
                    ),
                    decoration: AppDecoration.cardshadow.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      spacing: 4,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "msg_we_are_sorry_that".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                              TextSpan(
                                text: "msg_the_support_center".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                              TextSpan(
                                text: "msg_before_closing_your".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.justify,
                          maxLines: 23,
                          overflow: TextOverflow.ellipsis,
                        ),
                        CustomElevatedButton(
                          text: "lbl_cancel_account".tr,
                          buttonTextStyle: CustomTextStyles.titleSmallLatoOnPrimary,
                        )
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
        text: "msg_account_cancellation".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }
}
