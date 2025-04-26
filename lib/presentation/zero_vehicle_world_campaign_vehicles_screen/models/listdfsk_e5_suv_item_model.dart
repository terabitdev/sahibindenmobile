import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listdfsk_e5_suv_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListdfskE5SuvItemModel extends Equatable {
  ListdfskE5SuvItemModel(
      {this.dfske5suv,
        this.tlCounter,
        this.thereareone,
        this.showpricelist,
        this.id}) {
    dfske5suv = dfske5suv ?? "lbl_dfsk_e5_suv".tr;
    tlCounter = tlCounter ?? "lbl_1_790_000_tl".tr;
    thereareone = thereareone ?? "msg_there_are_1_different".tr;
    showpricelist = showpricelist ?? "msg_show_price_list".tr;
    id = id ?? "";
  }

  String? dfske5suv;

  String? tlCounter;

  String? thereareone;

  String? showpricelist;

  String? id;

  ListdfskE5SuvItemModel copyWith({
    String? dfske5suv,
    String? tlCounter,
    String? thereareone,
    String? showpricelist,
    String? id,
  }) {
    return ListdfskE5SuvItemModel(
      dfske5suv: dfske5suv ?? this.dfske5suv,
      tlCounter: tlCounter ?? this.tlCounter,
      thereareone: thereareone ?? this.thereareone,
      showpricelist: showpricelist ?? this.showpricelist,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props =>
      [dfske5suv, tlCounter, thereareone, showpricelist, id];
}
