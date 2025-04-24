import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/credit_bloc.dart';
import 'models/credit_three_item_model.dart';
import 'models/creditconsumer_tab_model.dart';
import 'widgets/credit_three_item_widget.dart';

class CreditconsumerTabPage extends StatefulWidget {
  const CreditconsumerTabPage({Key? key})
      : super(
    key: key,
  );

  @override
  CreditconsumerTabPageState createState() => CreditconsumerTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<CreditBloc>(
      create: (context) => CreditBloc(CreditState(
        creditconsumerTabModelObj: CreditconsumerTabModel(),
      ))
        ..add(CreditInitialEvent()),
      child: CreditconsumerTabPage(),
    );
  }
}

class CreditconsumerTabPageState extends State<CreditconsumerTabPage> {
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 48.h),
                      child: BlocSelector<CreditBloc, CreditState,
                          TextEditingController?>(
                        selector: (state) => state.amountController,
                        builder: (context, amountController) {
                          return CustomTextFormField(
                            controller: amountController,
                            hintText: "lbl_loan_amount".tr,
                            hintStyle: CustomTextStyles.bodySmallBlack90012,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 14.h,
                              vertical: 10.h,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 14.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 48.h),
                      child: BlocSelector<CreditBloc, CreditState,
                          TextEditingController?>(
                        selector: (state) => state.maturityoneController,
                        builder: (context, maturityoneController) {
                          return CustomTextFormField(
                            controller: maturityoneController,
                            hintText: "lbl_maturity".tr,
                            hintStyle: CustomTextStyles.bodySmallBlack90012,
                            textInputAction: TextInputAction.done,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 14.h,
                              vertical: 10.h,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 14.h),
                    CustomElevatedButton(
                      text: "msg_calculate_consumer".tr,
                      margin: EdgeInsets.symmetric(horizontal: 48.h),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: CustomTextStyles.labelLargeIndigo50,
                    ),
                    SizedBox(height: 62.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "msg_detailed_information".tr,
                        style: CustomTextStyles.titleSmallSemiBold_1,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    _buildCreditthree(context)
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
  Widget _buildCreditthree(BuildContext context) {
    return BlocSelector<CreditBloc, CreditState, CreditconsumerTabModel?>(
      selector: (state) => state.creditconsumerTabModelObj,
      builder: (context, creditconsumerTabModelObj) {
        return ListView.separated(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 12.h,
            );
          },
          itemCount: creditconsumerTabModelObj?.creditThreeItemList.length ?? 0,
          itemBuilder: (context, index) {
            CreditThreeItemModel model =
                creditconsumerTabModelObj?.creditThreeItemList[index] ??
                    CreditThreeItemModel();
            return CreditThreeItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
