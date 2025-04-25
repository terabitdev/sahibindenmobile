part of 'help_guide_bloc.dart';

/// Represents the state of HelpGuide in the application.

// ignore_for_file: must_be_immutable
class HelpGuideState extends Equatable {
  HelpGuideState({this.searchController, this.helpGuideModelObj});

  TextEditingController? searchController;

  HelpGuideModel? helpGuideModelObj;

  @override
  List<Object?> get props => [searchController, helpGuideModelObj];
  HelpGuideState copyWith({
    TextEditingController? searchController,
    HelpGuideModel? helpGuideModelObj,
  }) {
    return HelpGuideState(
      searchController: searchController ?? this.searchController,
      helpGuideModelObj: helpGuideModelObj ?? this.helpGuideModelObj,
    );
  }
}
