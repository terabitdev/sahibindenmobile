import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import '../../core/app_export.dart';
import 'bloc/home_bloc.dart';
import 'models/gridwings_tower_item_model.dart';
import 'models/scrollview_one_tab_model.dart';
import 'widgets/gridwings_tower_item_widget.dart';

class ScrollviewOneTabPage extends StatefulWidget {
  const ScrollviewOneTabPage({Key? key})
      : super(
    key: key,
  );

  @override
  ScrollviewOneTabPageState createState() => ScrollviewOneTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        scrollviewOneTabModelObj: ScrollviewOneTabModel(),
      ))
        ..add(HomeInitialEvent()),
      child: ScrollviewOneTabPage(),
    );
  }
}

class ScrollviewOneTabPageState extends State<ScrollviewOneTabPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: true,
      child: Container(
        padding: EdgeInsets.all(20.h),
        child: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Column(
                spacing: 18,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "msg_explore_nearby_estates".tr,
                    style: CustomTextStyles.titleMediumLatoBluegray800,
                  ),
                  BlocSelector<HomeBloc, HomeState, ScrollviewOneTabModel?>(
                    selector: (state) => state.scrollviewOneTabModelObj,
                    builder: (context, scrollviewOneTabModelObj) {
                      return ResponsiveGridListBuilder(
                        minItemWidth: 1,
                        minItemsPerRow: 2,
                        maxItemsPerRow: 2,
                        horizontalGridSpacing: 32.h,
                        verticalGridSpacing: 32.h,
                        builder: (context, items) => ListView(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: NeverScrollableScrollPhysics(),
                          children: items,
                        ),
                        gridItems: List.generate(
                          scrollviewOneTabModelObj
                              ?.gridwingsTowerItemList.length ??
                              0,
                              (index) {
                            GridwingsTowerItemModel model =
                                scrollviewOneTabModelObj
                                    ?.gridwingsTowerItemList[index] ??
                                    GridwingsTowerItemModel();
                            return GridwingsTowerItemWidget(
                              model,
                            );
                          },
                        ),
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
