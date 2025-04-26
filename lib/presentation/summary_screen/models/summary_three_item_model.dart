import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [summary_three_item_widget] screen.

// ignore_for_file: must_be_immutable
class SummaryThreeItemModel extends Equatable {
  SummaryThreeItemModel({this.buynow, this.description, this.id}) {
    buynow = buynow ?? "lbl_buy_now".tr;
    description = description ?? "msg_by_doing_business".tr;
    id = id ?? "";
  }

  String? buynow;

  String? description;

  String? id;

  SummaryThreeItemModel copyWith({
    String? buynow,
    String? description,
    String? id,
  }) {
    return SummaryThreeItemModel(
      buynow: buynow ?? this.buynow,
      description: description ?? this.description,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [buynow, description, id];
}
