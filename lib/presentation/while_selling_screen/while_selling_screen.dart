import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/while_selling_bloc.dart';
import 'models/while_selling_item_model.dart';
import 'models/while_selling_model.dart';
import 'widgets/while_selling_item_widget.dart';

class WhileSellingScreen extends StatelessWidget {
  const WhileSellingScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<WhileSellingBloc>(
      create: (context) => WhileSellingBloc(WhileSellingState(
        whileSellingModelObj: WhileSellingModel(),
      ))
        ..add(WhileSellingInitialEvent()),
      child: WhileSellingScreen(),
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
            children: [_buildColumnreal(context)],
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
        text: "lbl_while_selling".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumnreal(BuildContext context) {
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
              child: BlocSelector<WhileSellingBloc, WhileSellingState,
                  WhileSellingModel?>(
                selector: (state) => state.whileSellingModelObj,
                builder: (context, whileSellingModelObj) {
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
                    whileSellingModelObj?.whileSellingItemList.length ?? 0,
                    itemBuilder: (context, index) {
                      WhileSellingItemModel model =
                          whileSellingModelObj?.whileSellingItemList[index] ??
                              WhileSellingItemModel();
                      return WhileSellingItemWidget(
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
