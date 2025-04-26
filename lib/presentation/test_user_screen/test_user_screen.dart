import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/test_user_bloc.dart';
import 'models/test_user_model.dart';

// ignore_for_file: must_be_immutable
class TestUserScreen extends StatelessWidget {
  TestUserScreen({Key? key})
      : super(
    key: key,
  );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<TestUserBloc>(
      create: (context) => TestUserBloc(TestUserState(
        testUserModelObj: TestUserModel(),
      ))
        ..add(TestUserInitialEvent()),
      child: TestUserScreen(),
    );
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
        child: Form(
          key: _formKey,
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
                  children: [
                    _buildColumnadmanagem(context),
                    SizedBox(height: 20.h),
                    _buildColumnmessagesa(context),
                    SizedBox(height: 20.h),
                    _buildColumnfavorites(context),
                    SizedBox(height: 20.h),
                    _buildColumnmyshoppin(context),
                    SizedBox(height: 20.h),
                    _buildColumnmyaccount(context),
                    SizedBox(height: 14.h),
                    _buildColumnother(context),
                    SizedBox(height: 20.h),
                    _buildLogout(context),
                    SizedBox(height: 36.h)
                  ],
                ),
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
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20Solid,
        margin: EdgeInsets.only(left: 20.h),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_test_user".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildWhatsonair(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.whatsonairController,
      builder: (context, whatsonairController) {
        return CustomTextFormField(
          controller: whatsonairController,
          hintText: "lbl_what_s_on_air".tr,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildGroup2306one(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.group2306oneController,
      builder: (context, group2306oneController) {
        return CustomTextFormField(
          controller: group2306oneController,
          hintText: "msg_those_who_are_not".tr,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumnadmanagem(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 24.h,
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
            "lbl_ad_management".tr,
            style: CustomTextStyles.titleSmallPrimary_1,
          ),
          _buildWhatsonair(context),
          _buildGroup2306one(context),
          Text(
            "msg_adding_a_photo_to".tr,
            style: theme.textTheme.bodyMedium,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMessage(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.messageController,
      builder: (context, messageController) {
        return CustomTextFormField(
          controller: messageController,
          hintText: "msg_advertisement_messages".tr,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildMessageone(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.messageoneController,
      builder: (context, messageoneController) {
        return CustomTextFormField(
          controller: messageoneController,
          hintText: "lbl_get_messages".tr,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildInformationone(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.informationoneController,
      builder: (context, informationoneController) {
        return CustomTextFormField(
          controller: informationoneController,
          hintText: "lbl_information".tr,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumnmessagesa(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_messages_and_notifications".tr,
            style: CustomTextStyles.titleSmallPrimary_1,
          ),
          _buildMessage(context),
          _buildMessageone(context),
          _buildInformationone(context),
          GestureDetector(
            onTap: () {
              onTapTxtMyproductone(context);
            },
            child: Text(
              "msg_my_product_offers".tr,
              style: theme.textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSpecialadsfor(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.specialadsforController,
      builder: (context, specialadsforController) {
        return CustomTextFormField(
          controller: specialadsforController,
          hintText: "msg_special_ads_for".tr,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFavorite(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.favoriteController,
      builder: (context, favoriteController) {
        return CustomTextFormField(
          controller: favoriteController,
          hintText: "msg_favorite_listings".tr,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.searchController,
      builder: (context, searchController) {
        return CustomTextFormField(
          controller: searchController,
          hintText: "msg_favorite_searches".tr,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildFavorite1(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.favorite1Controller,
      builder: (context, favorite1Controller) {
        return CustomTextFormField(
          controller: favorite1Controller,
          hintText: "msg_favorite_sellers".tr,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumnfavorites(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_favorites".tr,
            style: CustomTextStyles.titleSmallPrimary_1,
          ),
          _buildSpecialadsfor(context),
          _buildFavorite(context),
          _buildSearch(context),
          _buildFavorite1(context),
          GestureDetector(
            onTap: () {
              onTapTxtComparisonlist(context);
            },
            child: Text(
              "lbl_comparison_list".tr,
              style: theme.textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup2354one(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.group2354oneController,
      builder: (context, group2354oneController) {
        return CustomTextFormField(
          controller: group2354oneController,
          hintText: "msg_q_my_money_is".tr,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildGroup2359one(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.group2359oneController,
      builder: (context, group2359oneController) {
        return CustomTextFormField(
          controller: group2359oneController,
          hintText: "msg_my_brand_new_transactions".tr,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumnmyshoppin(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_my_shopping_transactions".tr,
            style: CustomTextStyles.titleSmallPrimary_1,
          ),
          _buildGroup2354one(context),
          _buildGroup2359one(context),
          Text(
            "lbl_safe_e_commerce".tr,
            style: theme.textTheme.bodyMedium,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup2434one(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.group2434oneController,
      builder: (context, group2434oneController) {
        return CustomTextFormField(
          controller: group2434oneController,
          hintText: "msg_my_account_information".tr,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildGroup2439one(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.group2439oneController,
      builder: (context, group2439oneController) {
        return CustomTextFormField(
          controller: group2439oneController,
          hintText: "msg_my_approved_number".tr,
          textInputType: TextInputType.phone,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 10.h,
          ),
          validator: (value) {
            if (!isValidPhone(value)) {
              return "err_msg_please_enter_valid_phone_number".tr;
            }
            return null;
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildMysavedcards(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.mysavedcardsController,
      builder: (context, mysavedcardsController) {
        return CustomTextFormField(
          controller: mysavedcardsController,
          hintText: "lbl_my_saved_cards".tr,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumnmyaccount(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_my_account".tr,
            style: CustomTextStyles.titleSmallPrimary_1,
          ),
          _buildGroup2434one(context),
          _buildGroup2439one(context),
          _buildMysavedcards(context),
          GestureDetector(
            onTap: () {
              onTapTxtMypermissions(context);
            },
            child: Text(
              "lbl_my_permissions".tr,
              style: theme.textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHelpguideone(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.helpguideoneController,
      builder: (context, helpguideoneController) {
        return CustomTextFormField(
          controller: helpguideoneController,
          hintText: "lbl_help_guide".tr,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildGroup2469one(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.group2469oneController,
      builder: (context, group2469oneController) {
        return CustomTextFormField(
          controller: group2469oneController,
          hintText: "msg_problem_suggestion".tr,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAboutone(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.aboutoneController,
      builder: (context, aboutoneController) {
        return CustomTextFormField(
          controller: aboutoneController,
          hintText: "lbl_about".tr,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildGroup2477one(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.group2477oneController,
      builder: (context, group2477oneController) {
        return CustomTextFormField(
          controller: group2477oneController,
          hintText: "msg_protection_of_personal".tr,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildCookiesone(BuildContext context) {
    return BlocSelector<TestUserBloc, TestUserState, TextEditingController?>(
      selector: (state) => state.cookiesoneController,
      builder: (context, cookiesoneController) {
        return CustomTextFormField(
          controller: cookiesoneController,
          hintText: "lbl_cookies".tr,
          textInputAction: TextInputAction.done,
          contentPadding: EdgeInsets.fromLTRB(12.h, 12.h, 12.h, 16.h),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildColumnother(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 14,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_other".tr,
            style: CustomTextStyles.titleSmallPrimary_1,
          ),
          _buildHelpguideone(context),
          _buildGroup2469one(context),
          _buildAboutone(context),
          _buildGroup2477one(context),
          _buildCookiesone(context),
          Text(
            "msg_language_preference".tr,
            style: theme.textTheme.bodyMedium,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLogout(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_log_out".tr,
      buttonTextStyle: CustomTextStyles.titleSmallLatoOnPrimary,
    );
  }

  /// Navigates to the myProductOffersScreen when the action is triggered.
  onTapTxtMyproductone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.myProductOffersScreen,
    );
  }

  /// Navigates to the comparisonListScreen when the action is triggered.
  onTapTxtComparisonlist(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.comparisonListScreen,
    );
  }

  /// Navigates to the myPermissionsScreen when the action is triggered.
  onTapTxtMypermissions(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.myPermissionsScreen,
    );
  }
}
