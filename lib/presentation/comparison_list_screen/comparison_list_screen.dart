import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/comparison_list_bloc.dart';
import 'models/comparison_list_model.dart';

class ComparisonListScreen extends StatelessWidget {
  const ComparisonListScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<ComparisonListBloc>(
      create: (context) => ComparisonListBloc(ComparisonListState(
        comparisonListModelObj: ComparisonListModel(),
      ))
        ..add(ComparisonListInitialEvent()),
      child: ComparisonListScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComparisonListBloc, ComparisonListState>(
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
                children: [_buildColumnnoadsfoun(context)],
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
        text: "lbl_comparison_list".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumnnoadsfoun(BuildContext context) {
    return Container(
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
        spacing: 14,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_no_ads_found_in".tr,
            style: theme.textTheme.titleSmall,
          ),
          Text(
            "msg_you_do_not_have5".tr,
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 10.h)
        ],
      ),
    );
  }
}
