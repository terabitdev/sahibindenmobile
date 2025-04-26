import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [while_selling_item_widget] screen.

// ignore_for_file: must_be_immutable
class WhileSellingItemModel extends Equatable {
  WhileSellingItemModel({this.realestate, this.id}) {
    realestate = realestate ?? "msg_real_estate_index".tr;
    id = id ?? "";
  }

  String? realestate;

  String? id;

  WhileSellingItemModel copyWith({
    String? realestate,
    String? id,
  }) {
    return WhileSellingItemModel(
      realestate: realestate ?? this.realestate,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [realestate, id];
}
