part of 'what_i_sold_with_yepy_bloc.dart';

/// Represents the state of WhatISoldWithYepy in the application.

// ignore_for_file: must_be_immutable
class WhatISoldWithYepyState extends Equatable {
  WhatISoldWithYepyState(
      {this.searchController, this.whatISoldWithYepyModelObj});

  TextEditingController? searchController;

  WhatISoldWithYepyModel? whatISoldWithYepyModelObj;

  @override
  List<Object?> get props => [searchController, whatISoldWithYepyModelObj];
  WhatISoldWithYepyState copyWith({
    TextEditingController? searchController,
    WhatISoldWithYepyModel? whatISoldWithYepyModelObj,
  }) {
    return WhatISoldWithYepyState(
      searchController: searchController ?? this.searchController,
      whatISoldWithYepyModelObj:
      whatISoldWithYepyModelObj ?? this.whatISoldWithYepyModelObj,
    );
  }
}
