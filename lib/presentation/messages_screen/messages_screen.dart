import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/messages_bloc.dart';
import 'models/messages_model.dart';
import 'scrollview_tab1_page.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key})
      : super(
    key: key,
  );

  @override
  MessagesScreenState createState() => MessagesScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<MessagesBloc>(
      create: (context) => MessagesBloc(MessagesState(
        messagesModelObj: MessagesModel(),
      ))
        ..add(MessagesInitialEvent()),
      child: MessagesScreen(),
    );
  }
}

// ignore_for_file: must_be_immutable
class MessagesScreenState extends State<MessagesScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
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
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 16.h),
                  child: Column(
                    spacing: 20,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      _buildTabview(context),
                      Expanded(
                        child: Container(
                          child: TabBarView(
                            controller: tabviewController,
                            children: [
                              Container(),
                              ScrollviewTab1Page.builder(context)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 22.h)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildColumnvelma(context),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return CustomAppBar(
      height: 56.h,
      leadingWidth: 70.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 3.h,
          bottom: 3.h,
        ),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      actions: [
        AppbarTrailingIconbuttonOne(
          imagePath: ImageConstant.imgThumbsUp,
          margin: EdgeInsets.only(
            top: 3.h,
            right: 19.h,
            bottom: 3.h,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      decoration: BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(
          24.h,
        ),
      ),
      width: double.maxFinite,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          24.h,
        ),
        child: TabBar(
          controller: tabviewController,
          labelPadding: EdgeInsets.zero,
          labelColor: appTheme.blueGray800,
          labelStyle: TextStyle(
            fontSize: 10.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelColor: appTheme.indigo20001,
          unselectedLabelStyle: TextStyle(
            fontSize: 10.fSize,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w600,
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorPadding: EdgeInsets.all(
            9.0.h,
          ),
          indicator: BoxDecoration(
            color: theme.colorScheme.onPrimary.withValues(
              alpha: 1,
            ),
            borderRadius: BorderRadius.circular(
              16.h,
            ),
          ),
          dividerHeight: 0.0,
          tabs: [
            Tab(
              height: 32,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Text(
                  "lbl_notifications".tr,
                ),
              ),
            ),
            Tab(
              height: 32,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Text(
                  "lbl_messages".tr,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnvelma(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 12.h),
            padding: EdgeInsets.symmetric(
              horizontal: 8.h,
              vertical: 10.h,
            ),
            decoration: AppDecoration.greySoft1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder18,
            ),
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgShape10,
                  height: 50.h,
                  width: 50.h,
                  radius: BorderRadius.circular(
                    24.h,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_velma_cole".tr,
                            style: CustomTextStyles.labelLargeBluegray800,
                          ),
                          Container(
                            width: 136.h,
                            margin: EdgeInsets.only(top: 6.h),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "msg_just_favorited_your".tr,
                                    style: CustomTextStyles
                                        .labelMediumBluegray60001,
                                  ),
                                  TextSpan(
                                    text: "msg_schoolview_house".tr,
                                    style:
                                    CustomTextStyles.labelMediumBluegray800,
                                  )
                                ],
                              ),
                              textAlign: TextAlign.left,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            "lbl_2_days_ago".tr,
                            style: CustomTextStyles.bodySmallIndigo20001,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgShape11,
                  height: 50.h,
                  width: 60.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
