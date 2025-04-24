import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/help_guide_one_bloc.dart';
import 'models/help_guide_one_model.dart';

class HelpGuideOneScreen extends StatelessWidget {
  const HelpGuideOneScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<HelpGuideOneBloc>(
      create: (context) => HelpGuideOneBloc(HelpGuideOneState(
        helpGuideOneModelObj: HelpGuideOneModel(),
      ))
        ..add(HelpGuideOneInitialEvent()),
      child: HelpGuideOneScreen(),
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
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(
                left: 20.h,
                top: 10.h,
                right: 20.h,
              ),
              child: Column(
                spacing: 20,
                children: [
                  BlocSelector<HelpGuideOneBloc, HelpGuideOneState,
                      TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return CustomSearchView(
                        controller: searchController,
                        hintText: "lbl_search2".tr,
                        contentPadding:
                        EdgeInsets.fromLTRB(20.h, 14.h, 12.h, 14.h),
                      );
                    },
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 22.h,
                      right: 20.h,
                    ),
                    decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder10,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.only(
                            left: 14.h,
                            top: 30.h,
                            right: 14.h,
                          ),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder14,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "msg_let_my_home_be_your2".tr,
                                style: CustomTextStyles.labelLargeTeal900,
                              ),
                              SizedBox(height: 6.h),
                              Text(
                                "msg_we_launched_the".tr,
                                maxLines: 6,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMedium13,
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                "msg_let_my_home_be".tr,
                                maxLines: 70,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.bodyMedium13,
                              ),
                              SizedBox(height: 136.h)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 46.h)
                ],
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
        text: "lbl_help_guide2".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }
}
