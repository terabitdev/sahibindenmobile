import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'bloc/zero_vehicle_world_zero_vehicle_bloc.dart';
import 'models/listbmwseeklogo_item_model.dart';
import 'models/zerovehicle_tab_model.dart';
import 'widgets/listbmwseeklogo_item_widget.dart';

class ZerovehicleTabPage extends StatefulWidget {
  const ZerovehicleTabPage({Key? key})
      : super(
    key: key,
  );

  @override
  ZerovehicleTabPageState createState() => ZerovehicleTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ZeroVehicleWorldZeroVehicleBloc>(
      create: (context) =>
      ZeroVehicleWorldZeroVehicleBloc(ZeroVehicleWorldZeroVehicleState(
        zerovehicleTabModelObj: ZerovehicleTabModel(),
      ))
        ..add(ZeroVehicleWorldZeroVehicleInitialEvent()),
      child: ZerovehicleTabPage(),
    );
  }
}

class ZerovehicleTabPageState extends State<ZerovehicleTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 20.h,
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.all(24.h),
              decoration: AppDecoration.cardshadow.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildListbmwseeklogo(context),
                  SizedBox(height: 26.h)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListbmwseeklogo(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 86.h),
        child: BlocSelector<ZeroVehicleWorldZeroVehicleBloc,
            ZeroVehicleWorldZeroVehicleState, ZerovehicleTabModel?>(
          selector: (state) => state.zerovehicleTabModelObj,
          builder: (context, zerovehicleTabModelObj) {
            return ListView.builder(
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount:
              zerovehicleTabModelObj?.listbmwseeklogoItemList.length ?? 0,
              itemBuilder: (context, index) {
                ListbmwseeklogoItemModel model =
                    zerovehicleTabModelObj?.listbmwseeklogoItemList[index] ??
                        ListbmwseeklogoItemModel();
                return ListbmwseeklogoItemWidget(
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
