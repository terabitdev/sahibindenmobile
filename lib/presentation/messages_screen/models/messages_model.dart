import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [messages_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesModel extends Equatable {
  MessagesModel();

  MessagesModel copyWith() {
    return MessagesModel();
  }

  @override
  List<Object?> get props => [];
}
