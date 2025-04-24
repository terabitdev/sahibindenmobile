import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listall_real_item_widget] screen.
/// // ignore_for_file: must_be_immutable
class ListallRealItemModel extends Equatable {
  ListallRealItemModel(
      {this.allRealEstate,
      this.allrealestate1,
      this.oneMillionSevenHundredEightyNineThousandThreeHundredFourteen,
      this.id}) {
    allRealEstate = allRealEstate ?? ImageConstant.imgHome;
    allrealestate1 = allrealestate1 ?? "msg_all_real_estate".tr;
    oneMillionSevenHundredEightyNineThousandThreeHundredFourteen =
        oneMillionSevenHundredEightyNineThousandThreeHundredFourteen ??
            "lbl_1_789_314".tr;
    id = id ?? "";
  }

  String? allRealEstate;
  String? allrealestate1;
  String? oneMillionSevenHundredEightyNineThousandThreeHundredFourteen;
  String? id;
  ListallRealItemModel copyWith({
    String? allRealEstate,
    String? allrealestate1,
    String? oneMillionSevenHundredEightyNineThousandThreeHundredFourteen,
    String? id,
  }) {
    return ListallRealItemModel(
      allRealEstate: allRealEstate ?? this.allRealEstate,
      allrealestate1: allrealestate1 ?? this.allrealestate1,
      oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen ??
              this.oneMillionSevenHundredEightyNineThousandThreeHundredFourteen,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
        allRealEstate,
        allrealestate1,
        oneMillionSevenHundredEightyNineThousandThreeHundredFourteen,
        id
      ];
}
