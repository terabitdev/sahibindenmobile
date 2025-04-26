import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:sahibindenmobile/widgets/app_bar/primary_app_bar.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/my_product_not_on_sales_bloc.dart';
import 'models/gridhighett_item_model.dart';
import 'models/my_product_not_on_sales_model.dart';
import 'widgets/gridhighett_item_widget.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyProductNotOnSalesBloc>(
      create: (context) => MyProductNotOnSalesBloc(MyProductNotOnSalesState(
        myProductNotOnSalesModelObj: MyProductNotOnSalesModel(),
      ))
        ..add(MyProductNotOnSalesInitialEvent()),
      child: SearchScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.colorScheme.onPrimary.withValues(
        alpha: 1,
      ),
      resizeToAvoidBottomInset: false,
      appBar: _buildAppbar(context),
      body: SafeArea(
        top: false,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 20.h,
            top: 10.h,
            right: 20.h,
          ),
          child: Column(
            spacing: 34,
            mainAxisSize: MainAxisSize.max,
            children: [_buildRowsearch(context), _buildGridhighett(context)],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return buildPrimaryAppbar(context, title: "lbl_search_results".tr);
  }

  /// Section Widget
  Widget _buildRowsearch(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: BlocSelector<MyProductNotOnSalesBloc,
                MyProductNotOnSalesState, TextEditingController?>(
              selector: (state) => state.searchController,
              builder: (context, searchController) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "msg_search_by_address".tr,
                  contentPadding: EdgeInsets.fromLTRB(20.h, 14.h, 12.h, 14.h),
                );
              },
            ),
          ),
          CustomIconButton(
            height: 52.h,
            width: 52.h,
            padding: EdgeInsets.all(14.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            child: CustomImageView(
              imagePath: ImageConstant.imgUser,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGridhighett(BuildContext context) {
    return Expanded(
      child: BlocSelector<MyProductNotOnSalesBloc, MyProductNotOnSalesState,
          MyProductNotOnSalesModel?>(
        selector: (state) => state.myProductNotOnSalesModelObj,
        builder: (context, myProductNotOnSalesModelObj) {
          return GridView.builder(
            itemCount: myProductNotOnSalesModelObj?.gridhighettItemList.length ?? 0,
            shrinkWrap: true,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 18.h,
                  crossAxisSpacing: 18.h,),
            itemBuilder: (BuildContext context, int index) {
                  GridhighettItemModel model =
                      myProductNotOnSalesModelObj?.gridhighettItemList[index] ??
                          GridhighettItemModel();
                  return GridhighettItemWidget(
                    model,
                  );
            },
          );
          // return ResponsiveGridListBuilder(
          //   minItemWidth: 1,
          //   minItemsPerRow: 2,
          //   maxItemsPerRow: 2,
          //   horizontalGridSpacing: 18.h,
          //   verticalGridSpacing: 18.h,
          //   builder: (context, items) => ListView(
          //     shrinkWrap: true,
          //     padding: EdgeInsets.zero,
          //     physics: BouncingScrollPhysics(),
          //     children: items,
          //   ),
          //   gridItems: List.generate(
          //     myProductNotOnSalesModelObj?.gridhighettItemList.length ?? 0,
          //         (index) {
          //       GridhighettItemModel model =
          //           myProductNotOnSalesModelObj?.gridhighettItemList[index] ??
          //               GridhighettItemModel();
          //       return GridhighettItemWidget(
          //         model,
          //       );
          //     },
          //   ),
          // );
        },
      ),
    );
  }
}
