import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/safe_e_commerce_one_bloc.dart';
import 'models/safe_e_commerce_one_model.dart';
import 'models/safe_ecommerce_item_model.dart';
import 'widgets/safe_ecommerce_item_widget.dart'; // ignore_for_file: must_be_immutable

class SafeECommerceOnePage extends StatefulWidget {
  const SafeECommerceOnePage({Key? key})
      : super(
    key: key,
  );

  @override
  SafeECommerceOnePageState createState() => SafeECommerceOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<SafeECommerceOneBloc>(
      create: (context) => SafeECommerceOneBloc(SafeECommerceOneState(
        safeECommerceOneModelObj: SafeECommerceOneModel(),
      ))
        ..add(SafeECommerceOneInitialEvent()),
      child: SafeECommerceOnePage(),
    );
  }
}

class SafeECommerceOnePageState extends State<SafeECommerceOnePage>
    with AutomaticKeepAliveClientMixin<SafeECommerceOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.all(20.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
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
                    children: [_buildSafeecommerce(context)],
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
  Widget _buildSafeecommerce(BuildContext context) {
    return Expanded(
      child: BlocSelector<SafeECommerceOneBloc, SafeECommerceOneState,
          SafeECommerceOneModel?>(
        selector: (state) => state.safeECommerceOneModelObj,
        builder: (context, safeECommerceOneModelObj) {
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
            safeECommerceOneModelObj?.safeEcommerceItemList.length ?? 0,
            itemBuilder: (context, index) {
              SafeEcommerceItemModel model =
                  safeECommerceOneModelObj?.safeEcommerceItemList[index] ??
                      SafeEcommerceItemModel();
              return SafeEcommerceItemWidget(
                model,
                onTapRowmyproducts: () {
                  onTapRowmyproducts(context);
                },
              );
            },
          );
        },
      ),
    );
  }

  /// Navigates to the myBankInformationThreeScreen when the action is triggered.
  onTapRowmyproducts(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.myBankInformationThreeScreen,
    );
  }
}
