import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/help_guide_bloc.dart';
import 'models/expandablelistw_item_model.dart';
import 'models/help_guide_model.dart';
import 'widgets/expandablelistw_item_widget.dart';

class HelpGuideScreen extends StatelessWidget {
  const HelpGuideScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<HelpGuideBloc>(
      create: (context) => HelpGuideBloc(HelpGuideState(
        helpGuideModelObj: HelpGuideModel(),
      ))
        ..add(HelpGuideInitialEvent()),
      child: HelpGuideScreen(),
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
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 20.h,
            top: 10.h,
            right: 20.h,
          ),
          child: Column(
            spacing: 20,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocSelector<HelpGuideBloc, HelpGuideState,
                  TextEditingController?>(
                selector: (state) => state.searchController,
                builder: (context, searchController) {
                  return CustomSearchView(
                    controller: searchController,
                    hintText: "lbl_search2".tr,
                    contentPadding: EdgeInsets.fromLTRB(20.h, 14.h, 12.h, 14.h),
                  );
                },
              ),
              _buildColumnletmyhome(context),
              Text(
                "msg_frequently_asked".tr,
                style: theme.textTheme.titleSmall,
              ),
              _buildExpandablelistw(context),
              SizedBox(height: 34.h)
            ],
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
        text: "lbl_help_guide2".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumnletmyhome(BuildContext context) {
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
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: GestureDetector(
              onTap: () {
                onTapRowletmyhomebe(context);
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
                          bottom: 4.h,
                        ),
                        child: Text(
                          "msg_let_my_home_be_your2".tr,
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
    return Expanded(
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(right: 12.h),
        child: BlocSelector<HelpGuideBloc, HelpGuideState, HelpGuideModel?>(
          selector: (state) => state.helpGuideModelObj,
          builder: (context, helpGuideModelObj) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: helpGuideModelObj?.expandablelistwItemList.length ?? 0,
              itemBuilder: (context, index) {
                ExpandablelistwItemModel model =
                    helpGuideModelObj?.expandablelistwItemList[index] ??
                        ExpandablelistwItemModel();
                return ExpandablelistwItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Navigates to the helpGuideOneScreen when the action is triggered.
  onTapRowletmyhomebe(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.helpGuideOneScreen,
    );
  }
}
