part of 'past_queries_bloc.dart';

/// Represents the state of PastQueries in the application.

// ignore_for_file: must_be_immutable
class PastQueriesState extends Equatable {
  PastQueriesState({this.searchController, this.pastQueriesModelObj});

  TextEditingController? searchController;

  PastQueriesModel? pastQueriesModelObj;

  @override
  List<Object?> get props => [searchController, pastQueriesModelObj];
  PastQueriesState copyWith({
    TextEditingController? searchController,
    PastQueriesModel? pastQueriesModelObj,
  }) {
    return PastQueriesState(
      searchController: searchController ?? this.searchController,
      pastQueriesModelObj: pastQueriesModelObj ?? this.pastQueriesModelObj,
    );
  }
}
