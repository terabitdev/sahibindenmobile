import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/summary_bloc.dart';
import 'models/summary_model.dart';
import 'models/summary_three_item_model.dart';
import 'widgets/summary_three_item_widget.dart';

class SummaryScreen extends StatelessWidget {
  const SummaryScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<SummaryBloc>(
      create: (context) => SummaryBloc(SummaryState(
        summaryModelObj: SummaryModel(),
      ))
        ..add(SummaryInitialEvent()),
      child: SummaryScreen(),
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
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 20.h,
            top: 20.h,
            right: 20.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [_buildSummarythree(context)],
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
        text: "lbl_summary".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildSummarythree(BuildContext context) {
    return Expanded(
      child: BlocSelector<SummaryBloc, SummaryState, SummaryModel?>(
        selector: (state) => state.summaryModelObj,
        builder: (context, summaryModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 20.h,
              );
            },
            itemCount: summaryModelObj?.summaryThreeItemList.length ?? 0,
            itemBuilder: (context, index) {
              SummaryThreeItemModel model =
                  summaryModelObj?.summaryThreeItemList[index] ??
                      SummaryThreeItemModel();
              return SummaryThreeItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
