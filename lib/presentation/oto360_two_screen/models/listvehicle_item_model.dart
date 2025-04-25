import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listvehicle_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListvehicleItemModel extends Equatable {
  ListvehicleItemModel({this.vehicle, this.vehicle1, this.id}) {
    vehicle = vehicle ?? ImageConstant.imgFloatingIcon;
    vehicle1 = vehicle1 ?? "msg_vehicle_valuation2".tr;
    id = id ?? "";
  }

  String? vehicle;

  String? vehicle1;

  String? id;

  ListvehicleItemModel copyWith({
    String? vehicle,
    String? vehicle1,
    String? id,
  }) {
    return ListvehicleItemModel(
      vehicle: vehicle ?? this.vehicle,
      vehicle1: vehicle1 ?? this.vehicle1,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [vehicle, vehicle1, id];
}
