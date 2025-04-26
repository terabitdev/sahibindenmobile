import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/yepy_bloc.dart';
import 'models/yepy_model.dart';
import 'models/yepy_three_item_model.dart';
import 'widgets/yepy_three_item_widget.dart';

class YepyScreen extends StatelessWidget {
  const YepyScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<YepyBloc>(
      create: (context) => YepyBloc(YepyState(
        yepyModelObj: YepyModel(),
      ))
        ..add(YepyInitialEvent()),
      child: YepyScreen(),
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
            spacing: 34,
            mainAxisSize: MainAxisSize.max,
            children: [_buildRowsearch(context), _buildYepythree(context)],
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
        text: "lbl_yepy2".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildRowsearch(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: BlocSelector<YepyBloc, YepyState, TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "msg_search_by_address".tr,
                  contentPadding: EdgeInsets.fromLTRB(20.h, 14.h, 12.h, 14.h),
                );
              },
            ),
          ),
          CustomIconButton(
            height: 52.h,
            width: 52.h,
            padding: EdgeInsets.all(14.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgUser,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildYepythree(BuildContext context) {
    return Expanded(
      child: BlocSelector<YepyBloc, YepyState, YepyModel?>(
        selector: (state) => state.yepyModelObj,
        builder: (context, yepyModelObj) {
          return ResponsiveGridListBuilder(
            minItemWidth: 1,
            minItemsPerRow: 2,
            maxItemsPerRow: 2,
            horizontalGridSpacing: 18.h,
            verticalGridSpacing: 18.h,
            builder: (context, items) => ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),
              children: items,
            ),
            gridItems: List.generate(
              yepyModelObj?.yepyThreeItemList.length ?? 0,
                  (index) {
                YepyThreeItemModel model =
                    yepyModelObj?.yepyThreeItemList[index] ??
                        YepyThreeItemModel();
                return YepyThreeItemWidget(
                  model,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
