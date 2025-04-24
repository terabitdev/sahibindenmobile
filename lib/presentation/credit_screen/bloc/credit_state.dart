part of 'credit_bloc.dart';

/// Represents the state of Credit in the application.

// ignore_for_file: must_be_immutable
class CreditState extends Equatable {
  CreditState(
      {this.amountController,
        this.maturityoneController,
        this.creditconsumerTabModelObj,
        this.creditModelObj});

  TextEditingController? amountController;

  TextEditingController? maturityoneController;

  CreditModel? creditModelObj;

  CreditconsumerTabModel? creditconsumerTabModelObj;

  @override
  List<Object?> get props => [
    amountController,
    maturityoneController,
    creditconsumerTabModelObj,
    creditModelObj
  ];
  CreditState copyWith({
    TextEditingController? amountController,
    TextEditingController? maturityoneController,
    CreditconsumerTabModel? creditconsumerTabModelObj,
    CreditModel? creditModelObj,
  }) {
    return CreditState(
      amountController: amountController ?? this.amountController,
      maturityoneController:
      maturityoneController ?? this.maturityoneController,
      creditconsumerTabModelObj:
      creditconsumerTabModelObj ?? this.creditconsumerTabModelObj,
      creditModelObj: creditModelObj ?? this.creditModelObj,
    );
  }
}
