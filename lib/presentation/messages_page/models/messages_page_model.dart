import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [messages_two_tab_page] screen.

// ignore_for_file: must_be_immutable
class MessagesTwoTabModel extends Equatable {
  MessagesTwoTabModel({this.selectedDate, this.date = "\"\""}) {
    selectedDate = selectedDate ?? DateTime.now();
  }

  DateTime? selectedDate;

  String date;

  MessagesTwoTabModel copyWith({
    DateTime? selectedDate,
    String? date,
  }) {
    return MessagesTwoTabModel(
      selectedDate: selectedDate ?? this.selectedDate,
      date: date ?? this.date,
    );
  }

  @override
  List<Object?> get props => [selectedDate, date];
}
