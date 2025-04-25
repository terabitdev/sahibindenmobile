part of 'problem_suggestion_post_bloc.dart';

/// Represents the state of ProblemSuggestionPost in the application.

// ignore_for_file: must_be_immutable
class ProblemSuggestionPostState extends Equatable {
  ProblemSuggestionPostState(
      {this.categoryoneController, this.problemSuggestionPostModelObj});

  TextEditingController? categoryoneController;

  ProblemSuggestionPostModel? problemSuggestionPostModelObj;

  @override
  List<Object?> get props =>
      [categoryoneController, problemSuggestionPostModelObj];
  ProblemSuggestionPostState copyWith({
    TextEditingController? categoryoneController,
    ProblemSuggestionPostModel? problemSuggestionPostModelObj,
  }) {
    return ProblemSuggestionPostState(
      categoryoneController:
      categoryoneController ?? this.categoryoneController,
      problemSuggestionPostModelObj:
      problemSuggestionPostModelObj ?? this.problemSuggestionPostModelObj,
    );
  }
}
