import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_radio_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/vehicle_damage_inquiry_bloc.dart';
import 'models/listwhatisvehic_item_model.dart';
import 'models/vehicledamage_tab_model.dart';
import 'widgets/listwhatisvehic_item_widget.dart';

class VehicledamageTabPage extends StatefulWidget {
  const VehicledamageTabPage({Key? key})
      : super(
    key: key,
  );

  @override
  VehicledamageTabPageState createState() => VehicledamageTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<VehicleDamageInquiryBloc>(
      create: (context) => VehicleDamageInquiryBloc(VehicleDamageInquiryState(
        vehicledamageTabModelObj: VehicledamageTabModel(),
      ))
        ..add(VehicleDamageInquiryInitialEvent()),
      child: VehicledamageTabPage(),
    );
  }
}

class VehicledamageTabPageState extends State<VehicledamageTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 14.h,
      ),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildFrame(context),
                    SizedBox(height: 14.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 48.h),
                      child: BlocSelector<VehicleDamageInquiryBloc,
                          VehicleDamageInquiryState, TextEditingController?>(
                        selector: (state) => state.platenumberController,
                        builder: (context, platenumberController) {
                          return CustomTextFormField(
                            controller: platenumberController,
                            hintText: "lbl_plate_number".tr,
                            hintStyle: CustomTextStyles.bodySmallBlack90012,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.number,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 14.h,
                              vertical: 10.h,
                            ),
                            validator: (value) {
                              if (!isNumeric(value)) {
                                return "err_msg_please_enter_valid_number".tr;
                              }
                              return null;
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 14.h),
                    CustomElevatedButton(
                      text: "msg_vehicle_damage_inquiry".tr,
                      margin: EdgeInsets.symmetric(horizontal: 48.h),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: CustomTextStyles.labelLargeIndigo50,
                    ),
                    SizedBox(height: 14.h),
                    Text(
                      "lbl_my_past_queries".tr,
                      style: CustomTextStyles.bodyMediumPrimary,
                    ),
                    SizedBox(height: 68.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "msg_detailed_information".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    _buildListwhatisvehic(context)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 68.h),
      child: BlocBuilder<VehicleDamageInquiryBloc, VehicleDamageInquiryState>(
        builder: (context, state) {
          return Row(
            children: [
              CustomRadioButton(
                text: "lbl_plate_number".tr,
                value: "lbl_plate_number".tr,
                groupValue: state.radioGroup,
                onChange: (value) {
                  context
                      .read<VehicleDamageInquiryBloc>()
                      .add(ChangeRadioButtonEvent(value: value));
                },
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: CustomRadioButton(
                  text: "lbl_chassis_no".tr,
                  value: "lbl_chassis_no".tr,
                  groupValue: state.radioGroup,
                  onChange: (value) {
                    context
                        .read<VehicleDamageInquiryBloc>()
                        .add(ChangeRadioButtonEvent(value: value));
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildListwhatisvehic(BuildContext context) {
    return BlocSelector<VehicleDamageInquiryBloc, VehicleDamageInquiryState,
        VehicledamageTabModel?>(
      selector: (state) => state.vehicledamageTabModelObj,
      builder: (context, vehicledamageTabModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 14.h,
            );
          },
          itemCount:
          vehicledamageTabModelObj?.listwhatisvehicItemList.length ?? 0,
          itemBuilder: (context, index) {
            ListwhatisvehicItemModel model =
                vehicledamageTabModelObj?.listwhatisvehicItemList[index] ??
                    ListwhatisvehicItemModel();
            return ListwhatisvehicItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
