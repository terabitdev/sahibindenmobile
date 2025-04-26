part of 'what_i_bought_with_brand_new_bloc.dart';

/// Represents the state of WhatIBoughtWithBrandNew in the application.

// ignore_for_file: must_be_immutable
class WhatIBoughtWithBrandNewState extends Equatable {
  WhatIBoughtWithBrandNewState({this.whatIBoughtWithBrandNewModelObj});

  WhatIBoughtWithBrandNewModel? whatIBoughtWithBrandNewModelObj;

  @override
  List<Object?> get props => [whatIBoughtWithBrandNewModelObj];
  WhatIBoughtWithBrandNewState copyWith(
      {WhatIBoughtWithBrandNewModel? whatIBoughtWithBrandNewModelObj}) {
    return WhatIBoughtWithBrandNewState(
      whatIBoughtWithBrandNewModelObj: whatIBoughtWithBrandNewModelObj ??
          this.whatIBoughtWithBrandNewModelObj,
    );
  }
}
