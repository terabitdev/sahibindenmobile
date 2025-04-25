import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/problem_suggestion_post_bloc.dart';
import 'models/problem_suggestion_post_model.dart';

class ProblemSuggestionPostScreen extends StatelessWidget {
  const ProblemSuggestionPostScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProblemSuggestionPostBloc>(
      create: (context) => ProblemSuggestionPostBloc(ProblemSuggestionPostState(
        problemSuggestionPostModelObj: ProblemSuggestionPostModel(),
      ))
        ..add(ProblemSuggestionPostInitialEvent()),
      child: ProblemSuggestionPostScreen(),
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 20.h,
                    right: 20.h,
                  ),
                  child: Column(
                    spacing: 20,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BlocSelector<ProblemSuggestionPostBloc,
                          ProblemSuggestionPostState, TextEditingController?>(
                        selector: (state) => state.categoryoneController,
                        builder: (context, categoryoneController) {
                          return CustomTextFormField(
                            controller: categoryoneController,
                            hintText: "lbl_category".tr,
                            hintStyle: theme.textTheme.titleSmall!,
                            textInputAction: TextInputAction.done,
                            maxLines: 7,
                            contentPadding:
                            EdgeInsets.fromLTRB(24.h, 24.h, 24.h, 12.h),
                            borderDecoration:
                            TextFormFieldStyleHelper.outlineBlack,
                            filled: true,
                            fillColor: theme.colorScheme.onPrimary.withValues(
                              alpha: 1,
                            ),
                          );
                        },
                      ),
                      _buildColumnuploadfil(context),
                      Text(
                        "msg_you_can_find_detailed".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall!.copyWith(
                          height: 1.50,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildColumnsubmit(context),
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
        text: "msg_problem_suggestion".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumnuploadfil(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(
        left: 24.h,
        top: 24.h,
        bottom: 24.h,
      ),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_upload_file".tr,
            style: theme.textTheme.titleSmall,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 22.h,
            ),
            decoration: AppDecoration.inputshadow.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder5,
            ),
            child: Column(
              spacing: 10,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFramePrimary24x24,
                  height: 24.h,
                  width: 26.h,
                ),
                Text(
                  "lbl_add_photo".tr,
                  style: CustomTextStyles.bodySmall12,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnsubmit(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomElevatedButton(
            text: "lbl_submit".tr,
            margin: EdgeInsets.only(bottom: 12.h),
            buttonTextStyle: CustomTextStyles.titleSmallLatoOnPrimary,
          )
        ],
      ),
    );
  }
}
