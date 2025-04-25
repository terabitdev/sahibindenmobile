import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listdetermineyo_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListdetermineyoItemModel extends Equatable {
  ListdetermineyoItemModel(
      {this.determineyour,
        this.description,
        this.detailed,
        this.group,
        this.id}) {
    determineyour = determineyour ?? "msg_determine_your_budget".tr;
    description = description ?? "msg_by_determining_your".tr;
    detailed = detailed ?? "msg_detailed_information".tr;
    group = group ?? "lbl_1".tr;
    id = id ?? "";
  }

  String? determineyour;

  String? description;

  String? detailed;

  String? group;

  String? id;

  ListdetermineyoItemModel copyWith({
    String? determineyour,
    String? description,
    String? detailed,
    String? group,
    String? id,
  }) {
    return ListdetermineyoItemModel(
      determineyour: determineyour ?? this.determineyour,
      description: description ?? this.description,
      detailed: detailed ?? this.detailed,
      group: group ?? this.group,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [determineyour, description, detailed, group, id];
}
