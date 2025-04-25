import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/house_rental_guide_10_step_home_bloc.dart';
import 'models/house_rental_guide_10_step_home_model.dart';
import 'models/listdetermineyo_item_model.dart';
import 'widgets/listdetermineyo_item_widget.dart';

class HouseRentalGuide10StepHomeScreen extends StatelessWidget {
  const HouseRentalGuide10StepHomeScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<HouseRentalGuide10StepHomeBloc>(
      create: (context) =>
      HouseRentalGuide10StepHomeBloc(HouseRentalGuide10StepHomeState(
        houseRentalGuide10StepHomeModelObj: HouseRentalGuide10StepHomeModel(),
      ))
        ..add(HouseRentalGuide10StepHomeInitialEvent()),
      child: HouseRentalGuide10StepHomeScreen(),
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
            spacing: 16,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_10_step_home_rental".tr,
                style: theme.textTheme.titleSmall,
              ),
              Text(
                "msg_we_have_summarized4".tr,
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyMedium,
              ),
              _buildListdetermineyo(context),
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
      height: 58.h,
      leadingWidth: 50.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20SolidOnprimary,
        margin: EdgeInsets.only(left: 30.h),
      ),
      title: AppbarSubtitleTwo(
        text: "lbl_real_estate360".tr,
        margin: EdgeInsets.only(left: 20.h),
      ),
      styleType: Style.bgFillPrimary,
    );
  }

  /// Section Widget
  Widget _buildListdetermineyo(BuildContext context) {
    return Expanded(
      child: BlocSelector<HouseRentalGuide10StepHomeBloc,
          HouseRentalGuide10StepHomeState, HouseRentalGuide10StepHomeModel?>(
        selector: (state) => state.houseRentalGuide10StepHomeModelObj,
        builder: (context, houseRentalGuide10StepHomeModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 20.h,
              );
            },
            itemCount: houseRentalGuide10StepHomeModelObj
                ?.listdetermineyoItemList.length ??
                0,
            itemBuilder: (context, index) {
              ListdetermineyoItemModel model =
                  houseRentalGuide10StepHomeModelObj
                      ?.listdetermineyoItemList[index] ??
                      ListdetermineyoItemModel();
              return ListdetermineyoItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
