import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/zero_vehicle_world_campaign_vehicles_bloc.dart';
import 'models/listdfsk_e5_suv_item_model.dart';
import 'models/zero_vehicle_world_campaign_vehicles_model.dart';
import 'widgets/listdfsk_e5_suv_item_widget.dart';

class ZeroVehicleWorldCampaignVehiclesScreen extends StatelessWidget {
  const ZeroVehicleWorldCampaignVehiclesScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<ZeroVehicleWorldCampaignVehiclesBloc>(
      create: (context) => ZeroVehicleWorldCampaignVehiclesBloc(
          ZeroVehicleWorldCampaignVehiclesState(
            zeroVehicleWorldCampaignVehiclesModelObj:
            ZeroVehicleWorldCampaignVehiclesModel(),
          ))
        ..add(ZeroVehicleWorldCampaignVehiclesInitialEvent()),
      child: ZeroVehicleWorldCampaignVehiclesScreen(),
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
            spacing: 18,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRowchangefilter(context),
              Text(
                "msg_price_list_90_results".tr,
                style: CustomTextStyles.labelLargeBlack900_1,
              ),
              _buildListdfske5suv(context),
              SizedBox(height: 50.h)
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
        text: "msg_campaign_vehicles".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildRowchangefilter(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_change_filters".tr,
            style: CustomTextStyles.titleSmallPrimary_1,
          ),
          Text(
            "lbl_sort".tr,
            style: CustomTextStyles.titleSmallPrimary_1,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListdfske5suv(BuildContext context) {
    return Expanded(
      child: BlocSelector<
          ZeroVehicleWorldCampaignVehiclesBloc,
          ZeroVehicleWorldCampaignVehiclesState,
          ZeroVehicleWorldCampaignVehiclesModel?>(
        selector: (state) => state.zeroVehicleWorldCampaignVehiclesModelObj,
        builder: (context, zeroVehicleWorldCampaignVehiclesModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 20.h,
              );
            },
            itemCount: zeroVehicleWorldCampaignVehiclesModelObj
                ?.listdfskE5SuvItemList.length ??
                0,
            itemBuilder: (context, index) {
              ListdfskE5SuvItemModel model =
                  zeroVehicleWorldCampaignVehiclesModelObj
                      ?.listdfskE5SuvItemList[index] ??
                      ListdfskE5SuvItemModel();
              return ListdfskE5SuvItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
