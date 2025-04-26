import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listyellowed_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListyellowedItemModel extends Equatable {
  ListyellowedItemModel({this.yellowed, this.description, this.more, this.id}) {
    yellowed = yellowed ?? "msg_yellowed_headlight".tr;
    description = description ?? "msg_do_you_know_what".tr;
    more = more ?? "lbl_more".tr;
    id = id ?? "";
  }

  String? yellowed;

  String? description;

  String? more;

  String? id;

  ListyellowedItemModel copyWith({
    String? yellowed,
    String? description,
    String? more,
    String? id,
  }) {
    return ListyellowedItemModel(
      yellowed: yellowed ?? this.yellowed,
      description: description ?? this.description,
      more: more ?? this.more,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [yellowed, description, more, id];
}
