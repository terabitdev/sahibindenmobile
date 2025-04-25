import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listdetermineyo_item_model.dart';

/// This class defines the variables used in the [house_rental_guide_10_step_home_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class HouseRentalGuide10StepHomeModel extends Equatable {
  HouseRentalGuide10StepHomeModel({this.listdetermineyoItemList = const []});

  List<ListdetermineyoItemModel> listdetermineyoItemList;

  HouseRentalGuide10StepHomeModel copyWith(
      {List<ListdetermineyoItemModel>? listdetermineyoItemList}) {
    return HouseRentalGuide10StepHomeModel(
      listdetermineyoItemList:
      listdetermineyoItemList ?? this.listdetermineyoItemList,
    );
  }

  @override
  List<Object?> get props => [listdetermineyoItemList];
}
