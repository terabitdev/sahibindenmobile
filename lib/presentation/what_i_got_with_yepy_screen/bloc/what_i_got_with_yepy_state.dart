part of 'what_i_got_with_yepy_bloc.dart';

/// Represents the state of WhatIGotWithYepy in the application.

// ignore_for_file: must_be_immutable
class WhatIGotWithYepyState extends Equatable {
  WhatIGotWithYepyState({this.searchController, this.whatIGotWithYepyModelObj});

  TextEditingController? searchController;

  WhatIGotWithYepyModel? whatIGotWithYepyModelObj;

  @override
  List<Object?> get props => [searchController, whatIGotWithYepyModelObj];
  WhatIGotWithYepyState copyWith({
    TextEditingController? searchController,
    WhatIGotWithYepyModel? whatIGotWithYepyModelObj,
  }) {
    return WhatIGotWithYepyState(
      searchController: searchController ?? this.searchController,
      whatIGotWithYepyModelObj:
      whatIGotWithYepyModelObj ?? this.whatIGotWithYepyModelObj,
    );
  }
}
