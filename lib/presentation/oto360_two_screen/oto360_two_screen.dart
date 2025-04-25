import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/oto360_two_bloc.dart';
import 'models/listvehicle_item_model.dart';
import 'models/oto360_two_model.dart';
import 'widgets/listvehicle_item_widget.dart';

class Oto360TwoScreen extends StatelessWidget {
  const Oto360TwoScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<Oto360TwoBloc>(
      create: (context) => Oto360TwoBloc(Oto360TwoState(
        oto360TwoModelObj: Oto360TwoModel(),
      ))
        ..add(Oto360TwoInitialEvent()),
      child: Oto360TwoScreen(),
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
            children: [_buildColumnvehicle(context)],
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
  Widget _buildColumnvehicle(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(
          left: 20.h,
          top: 24.h,
          right: 20.h,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child:
              BlocSelector<Oto360TwoBloc, Oto360TwoState, Oto360TwoModel?>(
                selector: (state) => state.oto360TwoModelObj,
                builder: (context, oto360TwoModelObj) {
                  return ListView.separated(
                    padding: EdgeInsets.zero,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10.h,
                      );
                    },
                    itemCount:
                    oto360TwoModelObj?.listvehicleItemList.length ?? 0,
                    itemBuilder: (context, index) {
                      ListvehicleItemModel model =
                          oto360TwoModelObj?.listvehicleItemList[index] ??
                              ListvehicleItemModel();
                      return ListvehicleItemWidget(
                        model,
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
