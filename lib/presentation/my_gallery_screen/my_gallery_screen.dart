import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/my_gallery_bloc.dart';
import 'models/expandablelistw3_item_model.dart';
import 'models/expandablelistw_item_model.dart';
import 'models/my_gallery_model.dart';
import 'widgets/expandablelistw3_item_widget.dart';
import 'widgets/expandablelistw_item_widget.dart';

class MyGalleryScreen extends StatelessWidget {
  const MyGalleryScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyGalleryBloc>(
      create: (context) => MyGalleryBloc(MyGalleryState(
        myGalleryModelObj: MyGalleryModel(),
      ))
        ..add(MyGalleryInitialEvent()),
      child: MyGalleryScreen(),
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
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  BlocSelector<MyGalleryBloc, MyGalleryState,
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
                  _buildExpandablelistw(context),
                  Text(
                    "msg_frequently_asked".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      spacing: 10,
                      children: [
                        _buildExpandablelistw1(context),
                        _buildRowwhatsinthe(context)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildColumnwhatsinth(context),
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
        text: "lbl_my_gallery".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildExpandablelistw(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: BlocSelector<MyGalleryBloc, MyGalleryState, MyGalleryModel?>(
        selector: (state) => state.myGalleryModelObj,
        builder: (context, myGalleryModelObj) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: myGalleryModelObj?.expandablelistwItemList.length ?? 0,
            itemBuilder: (context, index) {
              ExpandablelistwItemModel model =
                  myGalleryModelObj?.expandablelistwItemList[index] ??
                      ExpandablelistwItemModel();
              return ExpandablelistwItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildExpandablelistw1(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: BlocSelector<MyGalleryBloc, MyGalleryState, MyGalleryModel?>(
        selector: (state) => state.myGalleryModelObj,
        builder: (context, myGalleryModelObj) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: myGalleryModelObj?.expandablelistw3ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Expandablelistw3ItemModel model =
                  myGalleryModelObj?.expandablelistw3ItemList[index] ??
                      Expandablelistw3ItemModel();
              return Expandablelistw3ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildRowwhatsinthe(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 12.h,
      ),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_what_s_in_the_real".tr,
            style: theme.textTheme.titleSmall,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
            height: 14.h,
            width: 16.h,
            margin: EdgeInsets.only(right: 2.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnwhatsinth(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 12.h),
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 12.h,
            ),
            decoration: AppDecoration.cardshadow.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "msg_what_s_in_the_real".tr,
                  style: theme.textTheme.titleSmall,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDown,
                  height: 14.h,
                  width: 16.h,
                  margin: EdgeInsets.only(right: 2.h),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
