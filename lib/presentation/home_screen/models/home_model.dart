import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel();

  HomeModel copyWith() {
    return HomeModel();
  }

  @override
  List<Object?> get props => [];
}
