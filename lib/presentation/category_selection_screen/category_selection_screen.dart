import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/category_selection_bloc.dart';
import 'models/category_selection_model.dart';
import 'models/listall_real_item_model.dart';
import 'models/listpaint_item_model.dart';
import 'widgets/listall_real_item_widget.dart';
import 'widgets/listpaint_item_widget.dart';

class CategorySelectionScreen extends StatelessWidget {
  const CategorySelectionScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<CategorySelectionBloc>(
      create: (context) => CategorySelectionBloc(CategorySelectionState(
        categorySelectionModelObj: CategorySelectionModel(),
      ))
        ..add(CategorySelectionInitialEvent()),
      child: CategorySelectionScreen(),
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
                top: 20.h,
                right: 20.h,
              ),
              child: Column(
                spacing: 18,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocSelector<CategorySelectionBloc, CategorySelectionState,
                      TextEditingController?>(
                    selector: (state) => state.searchController,
                    builder: (context, searchController) {
                      return CustomSearchView(
                        controller: searchController,
                        hintText: "msg_search_house_apartment".tr,
                        hintStyle: CustomTextStyles.bodySmallRalewayIndigo20001,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 24.h,
                        ),
                        borderDecoration: SearchViewStyleHelper.fillGray,
                        fillColor: appTheme.gray100,
                      );
                    },
                  ),
                  _buildColumnallreal(context),
                  Text(
                    "msg_related_categories".tr,
                    style: CustomTextStyles.labelLargeBlack900SemiBold,
                  ),
                  Container(
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
                        _buildListpaint(context),
                        SizedBox(height: 28.h)
                      ],
                    ),
                  ),
                  SizedBox(height: 6.h)
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
      height: 58.h,
      leadingWidth: 50.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFrameOnprimary,
        margin: EdgeInsets.only(left: 30.h),
      ),
      title: AppbarSubtitleThree(
        text: "msg_category_selection".tr,
        margin: EdgeInsets.only(left: 30.h),
      ),
      styleType: Style.bgFillPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumnallreal(BuildContext context) {
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
          BlocSelector<CategorySelectionBloc, CategorySelectionState,
              CategorySelectionModel?>(
            selector: (state) => state.categorySelectionModelObj,
            builder: (context, categorySelectionModelObj) {
              return ListView.separated(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10.h,
                  );
                },
                itemCount:
                    categorySelectionModelObj?.listallRealItemList.length ?? 0,
                itemBuilder: (context, index) {
                  ListallRealItemModel model =
                      categorySelectionModelObj?.listallRealItemList[index] ??
                          ListallRealItemModel();
                  return ListallRealItemWidget(
                    model,
                    onTapRowallreal: () {
                      onTapRowallreal(context);
                    },
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListpaint(BuildContext context) {
    return BlocSelector<CategorySelectionBloc, CategorySelectionState,
        CategorySelectionModel?>(
      selector: (state) => state.categorySelectionModelObj,
      builder: (context, categorySelectionModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10.h,
            );
          },
          itemCount: categorySelectionModelObj?.listpaintItemList.length ?? 0,
          itemBuilder: (context, index) {
            ListpaintItemModel model =
                categorySelectionModelObj?.listpaintItemList[index] ??
                    ListpaintItemModel();
            return ListpaintItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Navigates to the categorySelectionOneScreen when the action is triggered.
  onTapRowallreal(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.categorySelectionOneScreen,
    );
  }
}
