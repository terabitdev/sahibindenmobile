import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listvehicle_item_model.dart';

/// This class defines the variables used in the [oto360_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class Oto360TwoModel extends Equatable {
  Oto360TwoModel({this.listvehicleItemList = const []});

  List<ListvehicleItemModel> listvehicleItemList;

  Oto360TwoModel copyWith({List<ListvehicleItemModel>? listvehicleItemList}) {
    return Oto360TwoModel(
      listvehicleItemList: listvehicleItemList ?? this.listvehicleItemList,
    );
  }

  @override
  List<Object?> get props => [listvehicleItemList];
}
