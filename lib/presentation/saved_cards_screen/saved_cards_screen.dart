import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/saved_cards_bloc.dart';
import 'models/saved_cards_model.dart';

class SavedCardsScreen extends StatelessWidget {
  const SavedCardsScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<SavedCardsBloc>(
      create: (context) => SavedCardsBloc(SavedCardsState(
        savedCardsModelObj: SavedCardsModel(),
      ))
        ..add(SavedCardsInitialEvent()),
      child: SavedCardsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SavedCardsBloc, SavedCardsState>(
      builder: (context, state) {
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
                spacing: 10,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_saved_cards".tr,
                    style: CustomTextStyles.titleSmallSemiBold_1,
                  ),
                  _buildColumnyoucanmak(context)
                ],
              ),
            ),
          ),
        );
      },
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
        text: "lbl_saved_cards".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildColumnyoucanmak(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.cardshadow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        spacing: 12,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "msg_you_can_make_your".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.justify,
            style: theme.textTheme.bodyMedium,
          ),
          CustomElevatedButton(
            height: 50.h,
            text: "lbl_add_new_cards".tr,
          )
        ],
      ),
    );
  }
}
