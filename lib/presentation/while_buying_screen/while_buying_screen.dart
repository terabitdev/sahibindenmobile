import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/while_buying_bloc.dart';
import 'models/while_buying_item_model.dart';
import 'models/while_buying_model.dart';
import 'widgets/while_buying_item_widget.dart';

class WhileBuyingScreen extends StatelessWidget {
  const WhileBuyingScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<WhileBuyingBloc>(
      create: (context) => WhileBuyingBloc(WhileBuyingState(
        whileBuyingModelObj: WhileBuyingModel(),
      ))
        ..add(WhileBuyingInitialEvent()),
      child: WhileBuyingScreen(),
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
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.all(20.h),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildWhilebuying(context),
                      SizedBox(height: 4.h)
                    ],
                  ),
                ),
              )
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
        text: "lbl_real_estate360".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildWhilebuying(BuildContext context) {
    return Expanded(
      child: BlocSelector<WhileBuyingBloc, WhileBuyingState, WhileBuyingModel?>(
        selector: (state) => state.whileBuyingModelObj,
        builder: (context, whileBuyingModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 10.h,
              );
            },
            itemCount: whileBuyingModelObj?.whileBuyingItemList.length ?? 0,
            itemBuilder: (context, index) {
              WhileBuyingItemModel model =
                  whileBuyingModelObj?.whileBuyingItemList[index] ??
                      WhileBuyingItemModel();
              return WhileBuyingItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
