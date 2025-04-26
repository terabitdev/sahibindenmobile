import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listwhatisvehic_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListwhatisvehicItemModel extends Equatable {
  ListwhatisvehicItemModel({this.whatisvehicle, this.description, this.id}) {
    whatisvehicle = whatisvehicle ?? "msg_what_is_vehicle".tr;
    description = description ?? "msg_it_is_a_service".tr;
    id = id ?? "";
  }

  String? whatisvehicle;

  String? description;

  String? id;

  ListwhatisvehicItemModel copyWith({
    String? whatisvehicle,
    String? description,
    String? id,
  }) {
    return ListwhatisvehicItemModel(
      whatisvehicle: whatisvehicle ?? this.whatisvehicle,
      description: description ?? this.description,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [whatisvehicle, description, id];
}
