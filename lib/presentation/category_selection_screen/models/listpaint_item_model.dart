import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listpaint_item_widget] screen.
/// // ignore_for_file: must_be_immutable
class ListpaintItemModel extends Equatable {
  ListpaintItemModel(
      {this.paintWhitewash,
      this.paintwhitewash1,
      this.oneMillionSevenHundredEightyNineThousandThreeHundredFourteen,
      this.id}) {
    paintWhitewash = paintWhitewash ?? ImageConstant.imgHome;
    paintwhitewash1 = paintwhitewash1 ?? "msg_paint_whitewash".tr;
    oneMillionSevenHundredEightyNineThousandThreeHundredFourteen =
        oneMillionSevenHundredEightyNineThousandThreeHundredFourteen ??
            "lbl_1_789_314".tr;
    id = id ?? "";
  }

  String? paintWhitewash;
  String? paintwhitewash1;
  String? oneMillionSevenHundredEightyNineThousandThreeHundredFourteen;
  String? id;
  ListpaintItemModel copyWith({
    String? paintWhitewash,
    String? paintwhitewash1,
    String? oneMillionSevenHundredEightyNineThousandThreeHundredFourteen,
    String? id,
  }) {
    return ListpaintItemModel(
      paintWhitewash: paintWhitewash ?? this.paintWhitewash,
      paintwhitewash1: paintwhitewash1 ?? this.paintwhitewash1,
      oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen ??
              this.oneMillionSevenHundredEightyNineThousandThreeHundredFourteen,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
        paintWhitewash,
        paintwhitewash1,
        oneMillionSevenHundredEightyNineThousandThreeHundredFourteen,
        id
      ];
}
