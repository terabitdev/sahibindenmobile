import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [completed_orders_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class CompletedOrdersModel extends Equatable {
  CompletedOrdersModel({this.selectedDate, this.date = "\"\""}) {
    selectedDate = selectedDate ?? DateTime.now();
  }

  DateTime? selectedDate;

  String date;

  CompletedOrdersModel copyWith({
    DateTime? selectedDate,
    String? date,
  }) {
    return CompletedOrdersModel(
      selectedDate: selectedDate ?? this.selectedDate,
      date: date ?? this.date,
    );
  }

  @override
  List<Object?> get props => [selectedDate, date];
}
