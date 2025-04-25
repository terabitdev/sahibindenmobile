import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listkadikoy_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListkadikoyItemModel extends Equatable {
  ListkadikoyItemModel({this.kadikoy, this.zero, this.id}) {
    kadikoy = kadikoy ?? "lbl_kadikoy".tr;
    zero = zero ?? "lbl_48_0".tr;
    id = id ?? "";
  }

  String? kadikoy;

  String? zero;

  String? id;

  ListkadikoyItemModel copyWith({
    String? kadikoy,
    String? zero,
    String? id,
  }) {
    return ListkadikoyItemModel(
      kadikoy: kadikoy ?? this.kadikoy,
      zero: zero ?? this.zero,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [kadikoy, zero, id];
}
