part of 'help_guide_one_bloc.dart';

/// Represents the state of HelpGuideOne in the application.

// ignore_for_file: must_be_immutable
class HelpGuideOneState extends Equatable {
  HelpGuideOneState({this.searchController, this.helpGuideOneModelObj});

  TextEditingController? searchController;

  HelpGuideOneModel? helpGuideOneModelObj;

  @override
  List<Object?> get props => [searchController, helpGuideOneModelObj];
  HelpGuideOneState copyWith({
    TextEditingController? searchController,
    HelpGuideOneModel? helpGuideOneModelObj,
  }) {
    return HelpGuideOneState(
      searchController: searchController ?? this.searchController,
      helpGuideOneModelObj: helpGuideOneModelObj ?? this.helpGuideOneModelObj,
    );
  }
}
