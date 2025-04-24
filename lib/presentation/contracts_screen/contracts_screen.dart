import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/contracts_bloc.dart';
import 'models/contracts_model.dart';
import 'models/expandablelisti_item_model.dart';
import 'widgets/expandablelisti_item_widget.dart';

class ContractsScreen extends StatelessWidget {
  const ContractsScreen({Key? key})
      : super(
    key: key,
  );

  static Widget builder(BuildContext context) {
    return BlocProvider<ContractsBloc>(
      create: (context) => ContractsBloc(ContractsState(
        contractsModelObj: ContractsModel(),
      ))
        ..add(ContractsInitialEvent()),
      child: ContractsScreen(),
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
            children: [_buildExpandablelisti(context)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 44.h,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHeroiconsArrowUp20Solid,
        margin: EdgeInsets.only(left: 20.h),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_contracts".tr,
      ),
      styleType: Style.bgFillOnPrimary,
    );
  }

  /// Section Widget
  Widget _buildExpandablelisti(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: BlocSelector<ContractsBloc, ContractsState, ContractsModel?>(
          selector: (state) => state.contractsModelObj,
          builder: (context, contractsModelObj) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: contractsModelObj?.expandablelistiItemList.length ?? 0,
              itemBuilder: (context, index) {
                ExpandablelistiItemModel model =
                    contractsModelObj?.expandablelistiItemList[index] ??
                        ExpandablelistiItemModel();
                return ExpandablelistiItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
