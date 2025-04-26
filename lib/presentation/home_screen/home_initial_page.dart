import 'package:flutter/material.dart';
import 'package:sahibindenmobile/widgets/app_bar/primary_app_bar.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/home_bloc.dart';
import 'models/home_initial_model.dart';
import 'models/layout_item_model.dart';
import 'models/listreal_estate_item_model.dart';
import 'scrollview_one_tab_page.dart';
import 'widgets/layout_item_widget.dart';
import 'widgets/listreal_estate_item_widget.dart';

class HomeInitialPage extends StatefulWidget {
  const HomeInitialPage({Key? key})
      : super(
    key: key,
  );

  @override
  HomeInitialPageState createState() => HomeInitialPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(HomeState(
        homeInitialModelObj: HomeInitialModel(),
      ))
        ..add(HomeInitialEvent()),
      child: HomeInitialPage(),
    );
  }
}

// ignore_for_file: must_be_immutable
class HomeInitialPageState extends State<HomeInitialPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  int tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildAppbar(context),
                    ),
                    SizedBox(height: 20.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: BlocSelector<HomeBloc, HomeState,
                          TextEditingController?>(
                        selector: (state) => state.searchController,
                        builder: (context, searchController) {
                          return CustomSearchView(
                            controller: searchController,
                            hintText: "msg_search_house_apartment".tr,
                            hintStyle:
                            CustomTextStyles.bodySmallRalewayIndigo20001,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.h,
                              vertical: 24.h,
                            ),
                            borderDecoration: SearchViewStyleHelper.fillGray,
                            fillColor: appTheme.gray100,
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20.h),
                    _buildColumnreal(context),
                    SizedBox(height: 20.h),
                    _buildColumnfeatured(context),
                    SizedBox(height: 20.h),
                    _buildColumntop(context)
                  ],
                )
              ],
            ),
          )
        ];
      },
      body: _buildTabbarview(context),
    );
  }

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  /// Section Widget
  PreferredSizeWidget _buildAppbar(BuildContext context) {
    return buildPrimaryAppbar(
      context,
      title: "lbl_sahibinden_com".tr,
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLockOnprimary,
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLockOnprimary20x20,
          margin: EdgeInsets.only(
            left: 17.h,
            right: 68.h,
          ),
          onTap: () {
            onTapLockthree(context);
          },
        )
      ],
    );
  }
  // PreferredSizeWidget _buildAppbar(BuildContext context) {
  //   return CustomAppBar(
  //     height: 58.h,
  //     leadingWidth: 50.h,
  //     leading: AppbarLeadingImage(
  //       imagePath: ImageConstant.imgFrameOnprimary,
  //       margin: EdgeInsets.only(left: 30.h),
  //     ),
  //     title: AppbarSubtitleThree(
  //       text: "lbl_sahibinden_com".tr,
  //       margin: EdgeInsets.only(left: 30.h),
  //     ),
  //     actions: [
  //       AppbarTrailingImage(
  //         imagePath: ImageConstant.imgLockOnprimary,
  //       ),
  //       AppbarTrailingImage(
  //         imagePath: ImageConstant.imgLockOnprimary20x20,
  //         margin: EdgeInsets.only(
  //           left: 17.h,
  //           right: 68.h,
  //         ),
  //         onTap: () {
  //           onTapLockthree(context);
  //         },
  //       )
  //     ],
  //     styleType: Style.bgFillPrimary,
  //   );
  // }

  /// Section Widget
  Widget _buildColumnreal(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 24.h,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BlocSelector<HomeBloc, HomeState, HomeInitialModel?>(
            selector: (state) => state.homeInitialModelObj,
            builder: (context, homeInitialModelObj) {
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
                homeInitialModelObj?.listrealEstateItemList.length ?? 0,
                itemBuilder: (context, index) {
                  ListrealEstateItemModel model =
                      homeInitialModelObj?.listrealEstateItemList[index] ??
                          ListrealEstateItemModel();
                  return ListrealEstateItemWidget(
                    model,
                    onTapRowrealestate: () {
                      onTapRowrealestate(context);
                    },
                  );
                },
              );
            },
          ),
          SizedBox(height: 34.h)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnfeatured(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 20.h),
      child: Column(
        spacing: 18,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "msg_featured_categories".tr,
                  style: CustomTextStyles.titleMediumLatoBluegray800,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.h),
                    child: Text(
                      "lbl_view_all".tr,
                      style: CustomTextStyles.labelMediumRalewayPrimary,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: BlocSelector<HomeBloc, HomeState, HomeInitialModel?>(
              selector: (state) => state.homeInitialModelObj,
              builder: (context, homeInitialModelObj) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 10.h,
                    children: List.generate(
                      homeInitialModelObj?.layoutItemList.length ?? 0,
                          (index) {
                        LayoutItemModel model =
                            homeInitialModelObj?.layoutItemList[index] ??
                                LayoutItemModel();
                        return LayoutItemWidget(
                          model,
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumntop(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 20.h),
      child: Column(
        spacing: 18,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 18.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_top_products".tr,
                  style: CustomTextStyles.titleMediumLatoBluegray800,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "lbl_explore".tr,
                    style: CustomTextStyles.labelMediumRalewayPrimary,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 372.h,
            child: TabBar(
              controller: tabviewController,
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              labelColor: appTheme.blueGray800,
              labelStyle: TextStyle(
                fontSize: 10.fSize,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
              ),
              unselectedLabelColor: appTheme.blueGray800,
              unselectedLabelStyle: TextStyle(
                fontSize: 10.fSize,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
              ),
              tabs: [
                Tab(
                  height: 56,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: tabIndex == 0
                        ? BoxDecoration(
                        color: appTheme.gray100,
                        borderRadius: BorderRadius.circular(
                          28.h,
                        ))
                        : BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(
                        28.h,
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(8.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgShape40x40,
                            height: 40.h,
                            width: 40.h,
                            radius: BorderRadius.circular(
                              20.h,
                            ),
                          ),
                          Text(
                            "lbl_bali".tr,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Tab(
                  height: 56,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: tabIndex == 1
                        ? BoxDecoration(
                        color: appTheme.gray100,
                        borderRadius: BorderRadius.circular(
                          28.h,
                        ))
                        : BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(
                        28.h,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.h),
                          decoration: AppDecoration.greySoft1.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder28,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgShape1,
                                height: 40.h,
                                width: 40.h,
                                radius: BorderRadius.circular(
                                  20.h,
                                ),
                              ),
                              Text(
                                "lbl_jakarta".tr,
                              )
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgShape2,
                          height: 40.h,
                          width: 40.h,
                          radius: BorderRadius.circular(
                            20.h,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Tab(
                  height: 56,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: tabIndex == 2
                        ? BoxDecoration(
                        color: appTheme.gray100,
                        borderRadius: BorderRadius.circular(
                          28.h,
                        ))
                        : BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(
                        28.h,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgShape2,
                          height: 40.h,
                          width: 40.h,
                          radius: BorderRadius.circular(
                            20.h,
                          ),
                        ),
                        Text(
                          "lbl_yogyakarta".tr,
                        )
                      ],
                    ),
                  ),
                ),
                Tab(
                  height: 56,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: tabIndex == 3
                        ? BoxDecoration(
                        color: appTheme.gray100,
                        borderRadius: BorderRadius.circular(
                          28.h,
                        ))
                        : BoxDecoration(
                      color: appTheme.gray100,
                      borderRadius: BorderRadius.circular(
                        28.h,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgShape3,
                          height: 40.h,
                          width: 40.h,
                          radius: BorderRadius.circular(
                            20.h,
                          ),
                        ),
                        Text(
                          "lbl_semarang".tr,
                        )
                      ],
                    ),
                  ),
                )
              ],
              indicatorColor: Colors.transparent,
              onTap: (index) {
                tabIndex = index;
                setState(() {});
              },
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabbarview(BuildContext context) {
    return SizedBox(
      height: 566.h,
      child: TabBarView(
        controller: tabviewController,
        children: [
          Container(),
          Container(),
          Container(),
          ScrollviewOneTabPage.builder(context)
        ],
      ),
    );
  }

  /// Navigates to the testUserScreen when the action is triggered.
  onTapLockthree(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.testUserScreen,
    );
  }

  /// Navigates to the categorySelectionScreen when the action is triggered.
  onTapRowrealestate(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.categorySelectionScreen,
    );
  }
}
