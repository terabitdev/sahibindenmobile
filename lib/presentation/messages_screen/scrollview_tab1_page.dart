import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/messages_bloc.dart';
import 'models/category_item_model.dart';
import 'models/messages_three_item_model.dart';
import 'models/scrollview_tab1_model.dart';
import 'widgets/category_item_widget.dart';
import 'widgets/messages_three_item_widget.dart';

class ScrollviewTab1Page extends StatefulWidget {
  const ScrollviewTab1Page({Key? key})
      : super(
    key: key,
  );

  @override
  ScrollviewTab1PageState createState() => ScrollviewTab1PageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MessagesBloc>(
      create: (context) => MessagesBloc(MessagesState(
        scrollviewTab1ModelObj: ScrollviewTab1Model(),
      ))
        ..add(MessagesInitialEvent()),
      child: ScrollviewTab1Page(),
    );
  }
}

class ScrollviewTab1PageState extends State<ScrollviewTab1Page> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 20.h),
        child: Column(
          spacing: 30,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCategory(context),
            SizedBox(
              width: double.maxFinite,
              child: Column(
                spacing: 18,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_today".tr,
                    style: CustomTextStyles.titleMediumRalewayBluegray800,
                  ),
                  _buildMessagesthree(context),
                  Text(
                    "msg_older_notifications".tr,
                    style: CustomTextStyles.titleMediumRalewayBluegray800,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCategory(BuildContext context) {
    return BlocSelector<MessagesBloc, MessagesState, ScrollviewTab1Model?>(
      selector: (state) => state.scrollviewTab1ModelObj,
      builder: (context, scrollviewTab1ModelObj) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Wrap(
            direction: Axis.horizontal,
            runSpacing: 10.h,
            spacing: 10.h,
            children: List<Widget>.generate(
              scrollviewTab1ModelObj?.categoryItemList.length ?? 0,
                  (index) {
                CategoryItemModel model =
                    scrollviewTab1ModelObj?.categoryItemList[index] ??
                        CategoryItemModel();
                return CategoryItemWidget(
                  model,
                );
              },
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildMessagesthree(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.h),
      child: BlocSelector<MessagesBloc, MessagesState, ScrollviewTab1Model?>(
        selector: (state) => state.scrollviewTab1ModelObj,
        builder: (context, scrollviewTab1ModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(
                height: 10.h,
              );
            },
            itemCount:
            scrollviewTab1ModelObj?.messagesThreeItemList.length ?? 0,
            itemBuilder: (context, index) {
              MessagesThreeItemModel model =
                  scrollviewTab1ModelObj?.messagesThreeItemList[index] ??
                      MessagesThreeItemModel();
              return MessagesThreeItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
