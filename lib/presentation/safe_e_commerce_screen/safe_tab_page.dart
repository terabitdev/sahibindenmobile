import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/safe_e_commerce_bloc.dart';
import 'models/safe_ecommerce_item_model.dart';
import 'models/safe_tab_model.dart';
import 'widgets/safe_ecommerce_item_widget.dart';

class SafeTabPage extends StatefulWidget {
  const SafeTabPage({Key? key})
      : super(
    key: key,
  );

  @override
  SafeTabPageState createState() => SafeTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SafeECommerceBloc>(
      create: (context) => SafeECommerceBloc(SafeECommerceState(
        safeTabModelObj: SafeTabModel(),
      ))
        ..add(SafeECommerceInitialEvent()),
      child: SafeTabPage(),
    );
  }
}

class SafeTabPageState extends State<SafeTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.h),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 24.h,
              ),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildSafeecommerce(context),
                  SizedBox(height: 14.h)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSafeecommerce(BuildContext context) {
    return Expanded(
      child: BlocSelector<SafeECommerceBloc, SafeECommerceState, SafeTabModel?>(
        selector: (state) => state.safeTabModelObj,
        builder: (context, safeTabModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 10.h,
              );
            },
            itemCount: safeTabModelObj?.safeEcommerceItemList.length ?? 0,
            itemBuilder: (context, index) {
              SafeEcommerceItemModel model =
                  safeTabModelObj?.safeEcommerceItemList[index] ??
                      SafeEcommerceItemModel();
              return SafeEcommerceItemWidget(
                model,
                onTapRowthingsiexpec: () {
                  onTapRowthingsiexpec(context);
                },
              );
            },
          );
        },
      ),
    );
  }

  /// Navigates to the completedScreen when the action is triggered.
  onTapRowthingsiexpec(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.completedScreen,
    );
  }
}
