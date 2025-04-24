import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [credit_three_item_widget] screen.

// ignore_for_file: must_be_immutable
class CreditThreeItemModel extends Equatable {
  CreditThreeItemModel({this.whatisa, this.aconsumerloan, this.id}) {
    whatisa = whatisa ?? "msg_what_is_a_consumer".tr;
    aconsumerloan = aconsumerloan ?? "msg_a_consumer_loan".tr;
    id = id ?? "";
  }

  String? whatisa;

  String? aconsumerloan;

  String? id;

  CreditThreeItemModel copyWith({
    String? whatisa,
    String? aconsumerloan,
    String? id,
  }) {
    return CreditThreeItemModel(
      whatisa: whatisa ?? this.whatisa,
      aconsumerloan: aconsumerloan ?? this.aconsumerloan,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [whatisa, aconsumerloan, id];
}
