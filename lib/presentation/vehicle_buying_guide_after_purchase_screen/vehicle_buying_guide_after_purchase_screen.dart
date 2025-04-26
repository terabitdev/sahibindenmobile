import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/vehicle_buying_guide_after_purchase_bloc.dart';
import 'models/listyellowed_item_model.dart';
import 'models/vehicle_buying_guide_after_purchase_model.dart';
import 'widgets/listyellowed_item_widget.dart';

class VehicleBuyingGuideAfterPurchaseScreen extends StatelessWidget {
  const VehicleBuyingGuideAfterPurchaseScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<VehicleBuyingGuideAfterPurchaseBloc>(
      create: (context) => VehicleBuyingGuideAfterPurchaseBloc(
          VehicleBuyingGuideAfterPurchaseState(
            vehicleBuyingGuideAfterPurchaseModelObj:
            VehicleBuyingGuideAfterPurchaseModel(),
          ))
        ..add(VehicleBuyingGuideAfterPurchaseInitialEvent()),
      child: VehicleBuyingGuideAfterPurchaseScreen(),
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
            top: 20.h,
            right: 20.h,
          ),
          child: Column(
            spacing: 20,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRowsearch(context),
              Text(
                "lbl_during_purchase".tr,
                style: theme.textTheme.titleSmall,
              ),
              _buildListyellowed(context),
              SizedBox(height: 10.h)
            ],
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
        imagePath: ImageConstant.imgHeroiconsArrowUp20SolidOnprimary,
        margin: EdgeInsets.only(left: 30.h),
      ),
      title: AppbarSubtitleThree(
        text: "lbl_oto360".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
      styleType: Style.bgFillPrimary,
    );
  }

  /// Section Widget
  Widget _buildRowsearch(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: BlocSelector<VehicleBuyingGuideAfterPurchaseBloc,
                VehicleBuyingGuideAfterPurchaseState, TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "msg_type_the_content".tr,
                  contentPadding: EdgeInsets.fromLTRB(20.h, 16.h, 14.h, 16.h),
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
  Widget _buildListyellowed(BuildContext context) {
    return Expanded(
      child: BlocSelector<
          VehicleBuyingGuideAfterPurchaseBloc,
          VehicleBuyingGuideAfterPurchaseState,
          VehicleBuyingGuideAfterPurchaseModel?>(
        selector: (state) => state.vehicleBuyingGuideAfterPurchaseModelObj,
        builder: (context, vehicleBuyingGuideAfterPurchaseModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 20.h,
              );
            },
            itemCount: vehicleBuyingGuideAfterPurchaseModelObj
                ?.listyellowedItemList.length ??
                0,
            itemBuilder: (context, index) {
              ListyellowedItemModel model =
                  vehicleBuyingGuideAfterPurchaseModelObj
                      ?.listyellowedItemList[index] ??
                      ListyellowedItemModel();
              return ListyellowedItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
