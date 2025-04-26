import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [saved_cards_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SavedCardsModel extends Equatable {
  SavedCardsModel();

  SavedCardsModel copyWith() {
    return SavedCardsModel();
  }

  @override
  List<Object?> get props => [];
}
