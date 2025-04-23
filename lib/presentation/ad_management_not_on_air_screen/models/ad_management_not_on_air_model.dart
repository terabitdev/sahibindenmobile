import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [ad_management_not_on_air_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AdManagementNotOnAirModel extends Equatable {
  AdManagementNotOnAirModel({
    this.selectedDate,
    this.date = "\"\"",
  }) {
    selectedDate = selectedDate ?? DateTime.now();
  }

  DateTime? selectedDate;
  String date;

  AdManagementNotOnAirModel copyWith({
    DateTime? selectedDate,
    String? date,
  }) {
    return AdManagementNotOnAirModel(
      selectedDate: selectedDate ?? this.selectedDate,
      date: date ?? this.date,
    );
  }

  @override
  List<Object?> get props => [selectedDate, date];
}
