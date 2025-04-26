import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [yepy_three_item_widget] screen.

// ignore_for_file: must_be_immutable
class YepyThreeItemModel extends Equatable {
  YepyThreeItemModel(
      {this.highettCommon,
        this.highettcommon1,
        this.tlCounter,
        this.timeZone,
        this.id}) {
    highettCommon = highettCommon ?? ImageConstant.imgRectangle9;
    highettcommon1 = highettcommon1 ?? "lbl_highett_common".tr;
    tlCounter = tlCounter ?? "lbl_1_395_000_tl".tr;
    timeZone = timeZone ?? "msg_avenue_west_side".tr;
    id = id ?? "";
  }

  String? highettCommon;

  String? highettcommon1;

  String? tlCounter;

  String? timeZone;

  String? id;

  YepyThreeItemModel copyWith({
    String? highettCommon,
    String? highettcommon1,
    String? tlCounter,
    String? timeZone,
    String? id,
  }) {
    return YepyThreeItemModel(
      highettCommon: highettCommon ?? this.highettCommon,
      highettcommon1: highettcommon1 ?? this.highettcommon1,
      tlCounter: tlCounter ?? this.tlCounter,
      timeZone: timeZone ?? this.timeZone,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props =>
      [highettCommon, highettcommon1, tlCounter, timeZone, id];
}
