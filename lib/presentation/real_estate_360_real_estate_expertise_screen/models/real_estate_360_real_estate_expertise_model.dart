import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [real_estate_360_real_estate_expertise_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class RealEstate360RealEstateExpertiseModel extends Equatable {
  RealEstate360RealEstateExpertiseModel(
      {this.dropdownItemList = const [], this.dropdownItemList1 = const []});

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  RealEstate360RealEstateExpertiseModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
  }) {
    return RealEstate360RealEstateExpertiseModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, dropdownItemList1];
}
