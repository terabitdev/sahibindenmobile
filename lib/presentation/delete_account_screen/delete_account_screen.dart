import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/delete_account_bloc.dart';
import 'models/delete_account_model.dart';

class DeleteAccountScreen extends StatelessWidget {
  const DeleteAccountScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<DeleteAccountBloc>(
      create: (context) => DeleteAccountBloc(DeleteAccountState(
        deleteAccountModelObj: DeleteAccountModel(),
      ))
        ..add(DeleteAccountInitialEvent()),
      child: DeleteAccountScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DeleteAccountBloc, DeleteAccountState>(
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
                top: 16.h,
                right: 20.h,
              ),
              child: Column(
                spacing: 6,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_delete_account".tr,
                    style: theme.textTheme.titleMedium,
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
                                text: "msg_we_are_sorry_that3".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                              TextSpan(
                                text: "msg_delete_your_account".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                              TextSpan(
                                text: " ",
                              ),
                              TextSpan(
                                text: "msg_sahibinden_com_account_if".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                              TextSpan(
                                text: "msg_the_support_center".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                              TextSpan(
                                text: "msg_before_closing_your".tr,
                                style: theme.textTheme.bodyMedium,
                              )
                            ],
                          ),
                          textAlign: TextAlign.justify,
                          maxLines: 23,
                          overflow: TextOverflow.ellipsis,
                        ),
                        CustomElevatedButton(
                          text: "lbl_delete_account".tr,
                          buttonTextStyle:
                          CustomTextStyles.titleSmallLatoOnPrimary,
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
        text: "lbl_delete_account".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }
}
