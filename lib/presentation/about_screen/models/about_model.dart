import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [about_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AboutModel extends Equatable {
  AboutModel();

  AboutModel copyWith() {
    return AboutModel();
  }

  @override
  List<Object?> get props => [];
}
