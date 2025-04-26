import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listbmwseeklogo_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListbmwseeklogoItemModel extends Equatable {
  ListbmwseeklogoItemModel({this.bmwseeklogo, this.id}) {
    bmwseeklogo = bmwseeklogo ?? ImageConstant.imgBmwSeeklogo4;
    id = id ?? "";
  }

  String? bmwseeklogo;

  String? id;

  ListbmwseeklogoItemModel copyWith({
    String? bmwseeklogo,
    String? id,
  }) {
    return ListbmwseeklogoItemModel(
      bmwseeklogo: bmwseeklogo ?? this.bmwseeklogo,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [bmwseeklogo, id];
}
