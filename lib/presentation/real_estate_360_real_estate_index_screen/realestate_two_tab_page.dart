import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/real_estate_360_real_estate_index_bloc.dart';
import 'models/chipviewistanbu_item_model.dart';
import 'models/listkadikoy_item_model.dart';
import 'models/listview_item_model.dart';
import 'models/realestate_two_tab_model.dart';
import 'widgets/chipviewistanbu_item_widget.dart';
import 'widgets/listkadikoy_item_widget.dart';
import 'widgets/listview_item_widget.dart';

class RealestateTwoTabPage extends StatefulWidget {
  const RealestateTwoTabPage({Key? key})
      : super(
    key: key,
  );

  @override
  RealestateTwoTabPageState createState() => RealestateTwoTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<RealEstate360RealEstateIndexBloc>(
      create: (context) =>
      RealEstate360RealEstateIndexBloc(RealEstate360RealEstateIndexState(
        realestateTwoTabModelObj: RealestateTwoTabModel(),
      ))
        ..add(RealEstate360RealEstateIndexInitialEvent()),
      child: RealestateTwoTabPage(),
    );
  }
}

class RealestateTwoTabPageState extends State<RealestateTwoTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 10.h,
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 22.h),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 58.h,
                        child: Text(
                          "lbl_kadikoy".tr,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            height: 1.66,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 4.h),
                            child: SizedBox(
                              height: 16.h,
                              width: 174.h,
                              child: ClipRRect(
                                child: LinearProgressIndicator(
                                  value: 0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 42.h,
                        child: Text(
                          "lbl_48_0".tr,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            height: 1.66,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 6.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 22.h),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 58.h,
                        child: Text(
                          "lbl_kadikoy".tr,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            height: 1.66,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 16.h,
                            width: 174.h,
                            margin: EdgeInsets.only(top: 4.h),
                            decoration: BoxDecoration(
                              color: appTheme.greenA700,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 42.h,
                        child: Text(
                          "lbl_48_0".tr,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            height: 1.66,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 6.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.h),
                  child: BlocSelector<
                      RealEstate360RealEstateIndexBloc,
                      RealEstate360RealEstateIndexState,
                      RealestateTwoTabModel?>(
                    selector: (state) => state.realestateTwoTabModelObj,
                    builder: (context, realestateTwoTabModelObj) {
                      return ListView.separated(
                        padding: EdgeInsets.zero,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 4.h,
                          );
                        },
                        itemCount: realestateTwoTabModelObj
                            ?.listkadikoyItemList.length ??
                            0,
                        itemBuilder: (context, index) {
                          ListkadikoyItemModel model = realestateTwoTabModelObj
                              ?.listkadikoyItemList[index] ??
                              ListkadikoyItemModel();
                          return ListkadikoyItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 38.h),
                Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 22.h,
                    vertical: 18.h,
                  ),
                  decoration: AppDecoration.cardshadow.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    spacing: 12,
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 4.h),
                      Text(
                        "msg_the_counties_that2".tr,
                        style: CustomTextStyles.bodyMediumBluegray400_1,
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: BlocSelector<
                            RealEstate360RealEstateIndexBloc,
                            RealEstate360RealEstateIndexState,
                            RealestateTwoTabModel?>(
                          selector: (state) => state.realestateTwoTabModelObj,
                          builder: (context, realestateTwoTabModelObj) {
                            return SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Wrap(
                                direction: Axis.horizontal,
                                runSpacing: 14.88.h,
                                spacing: 14.88.h,
                                children: List<Widget>.generate(
                                  realestateTwoTabModelObj
                                      ?.chipviewistanbuItemList.length ??
                                      0,
                                      (index) {
                                    ChipviewistanbuItemModel model =
                                        realestateTwoTabModelObj
                                            ?.chipviewistanbuItemList[
                                        index] ??
                                            ChipviewistanbuItemModel();
                                    return ChipviewistanbuItemWidget(
                                      model,
                                    );
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      BlocSelector<
                          RealEstate360RealEstateIndexBloc,
                          RealEstate360RealEstateIndexState,
                          RealestateTwoTabModel?>(
                        selector: (state) => state.realestateTwoTabModelObj,
                        builder: (context, realestateTwoTabModelObj) {
                          return ListView.separated(
                            padding: EdgeInsets.zero,
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 4.h,
                              );
                            },
                            itemCount: realestateTwoTabModelObj
                                ?.listviewItemList.length ??
                                0,
                            itemBuilder: (context, index) {
                              ListviewItemModel model = realestateTwoTabModelObj
                                  ?.listviewItemList[index] ??
                                  ListviewItemModel();
                              return ListviewItemWidget(
                                model,
                              );
                            },
                          );
                        },
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
