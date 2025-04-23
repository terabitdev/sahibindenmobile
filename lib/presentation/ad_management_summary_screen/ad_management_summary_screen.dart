import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/ad_management_summary_bloc.dart';
import 'models/ad_management_summary_model.dart';
import 'models/listnumberof_item_model.dart';
import 'widgets/listnumberof_item_widget.dart';

class AdManagementSummaryScreen extends StatelessWidget {
  const AdManagementSummaryScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<AdManagementSummaryBloc>(
      create: (context) => AdManagementSummaryBloc(
        AdManagementSummaryState(
          adManagementSummaryModelObj: AdManagementSummaryModel(),
        ),
      )..add(AdManagementSummaryInitialEvent()),
      child: AdManagementSummaryScreen(),
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
            top: 4.h,
            right: 20.h,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [_buildListnumberof(context)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 50.h,
      leadingWidth: 49.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20Solid,
        margin: EdgeInsets.only(left: 29.h),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_summary".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildListnumberof(BuildContext context) {
    return Expanded(
      child: BlocSelector<AdManagementSummaryBloc, AdManagementSummaryState,
          AdManagementSummaryModel?>(
        selector: (state) => state.adManagementSummaryModelObj,
        builder: (context, adManagementSummaryModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 14.h,
              );
            },
            itemCount:
            adManagementSummaryModelObj?.listnumberofItemList.length ?? 0,
            itemBuilder: (context, index) {
              ListnumberofItemModel model =
                  adManagementSummaryModelObj?.listnumberofItemList[index] ??
                      ListnumberofItemModel();
              return ListnumberofItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
