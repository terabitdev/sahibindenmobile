import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [test_user_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TestUserModel extends Equatable {
  TestUserModel();

  TestUserModel copyWith() {
    return TestUserModel();
  }

  @override
  List<Object?> get props => [];
}
