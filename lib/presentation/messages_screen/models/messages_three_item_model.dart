import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [messages_three_item_widget] screen.

// ignore_for_file: must_be_immutable
class MessagesThreeItemModel extends Equatable {
  MessagesThreeItemModel({this.emmettPerry, this.time, this.id}) {
    emmettPerry = emmettPerry ?? "lbl_emmett_perry".tr;
    time = time ?? "lbl_10_mins_ago".tr;
    id = id ?? "";
  }

  String? emmettPerry;

  String? time;

  String? id;

  MessagesThreeItemModel copyWith({
    String? emmettPerry,
    String? time,
    String? id,
  }) {
    return MessagesThreeItemModel(
      emmettPerry: emmettPerry ?? this.emmettPerry,
      time: time ?? this.time,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [emmettPerry, time, id];
}
