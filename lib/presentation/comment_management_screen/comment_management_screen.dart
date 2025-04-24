import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/comment_management_bloc.dart';
import 'models/comment_management_model.dart';
import 'models/listproductsi_item_model.dart';
import 'widgets/listproductsi_item_widget.dart';

class CommentManagementScreen extends StatelessWidget {
  const CommentManagementScreen({Key? key})
      : super(
          key: key,
        );
  static Widget builder(BuildContext context) {
    return BlocProvider<CommentManagementBloc>(
      create: (context) => CommentManagementBloc(CommentManagementState(
        commentManagementModelObj: CommentManagementModel(),
      ))
        ..add(CommentManagementInitialEvent()),
      child: CommentManagementScreen(),
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
            children: [_buildColumnproductsi(context)],
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
        text: "msg_comment_management".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumnproductsi(BuildContext context) {
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
              child: BlocSelector<CommentManagementBloc, CommentManagementState,
                  CommentManagementModel?>(
                selector: (state) => state.commentManagementModelObj,
                builder: (context, commentManagementModelObj) {
                  return ListView.separated(
                    padding: EdgeInsets.zero,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 10.h,
                      );
                    },
                    itemCount: commentManagementModelObj
                            ?.listproductsiItemList.length ??
                        0,
                    itemBuilder: (context, index) {
                      ListproductsiItemModel model = commentManagementModelObj
                              ?.listproductsiItemList[index] ??
                          ListproductsiItemModel();
                      return ListproductsiItemWidget(
                        model,
                        onTapRowproductsi: () {
                          onTapRowproductsi(context);
                        },
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

  /// Navigates to the productsIPurchasedScreen when the action is triggered.
  onTapRowproductsi(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.productsIPurchasedScreen,
    );
  }
}
