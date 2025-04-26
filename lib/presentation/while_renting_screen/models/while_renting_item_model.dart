
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [while_renting_item_widget] screen.

// ignore_for_file: must_be_immutable
class WhileRentingItemModel extends Equatable {
  WhileRentingItemModel({this.realestate, this.id}) {
    realestate = realestate ?? "msg_real_estate_index".tr;
    id = id ?? "";
  }

  String? realestate;

  String? id;

  WhileRentingItemModel copyWith({
    String? realestate,
    String? id,
  }) {
    return WhileRentingItemModel(
      realestate: realestate ?? this.realestate,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [realestate, id];
}
