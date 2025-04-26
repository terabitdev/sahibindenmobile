part of 'what_will_i_ship_one_bloc.dart';

/// Represents the state of WhatWillIShipOne in the application.

// ignore_for_file: must_be_immutable
class WhatWillIShipOneState extends Equatable {
  WhatWillIShipOneState(
      {this.searchController,
        this.nameController,
        this.formtextfillController,
        this.formtextfill1Controller,
        this.formtextfill2Controller,
        this.whatWillIShipOneModelObj});

  TextEditingController? searchController;

  TextEditingController? nameController;

  TextEditingController? formtextfillController;

  TextEditingController? formtextfill1Controller;

  TextEditingController? formtextfill2Controller;

  WhatWillIShipOneModel? whatWillIShipOneModelObj;

  @override
  List<Object?> get props => [
    searchController,
    nameController,
    formtextfillController,
    formtextfill1Controller,
    formtextfill2Controller,
    whatWillIShipOneModelObj
  ];
  WhatWillIShipOneState copyWith({
    TextEditingController? searchController,
    TextEditingController? nameController,
    TextEditingController? formtextfillController,
    TextEditingController? formtextfill1Controller,
    TextEditingController? formtextfill2Controller,
    WhatWillIShipOneModel? whatWillIShipOneModelObj,
  }) {
    return WhatWillIShipOneState(
      searchController: searchController ?? this.searchController,
      nameController: nameController ?? this.nameController,
      formtextfillController:
      formtextfillController ?? this.formtextfillController,
      formtextfill1Controller:
      formtextfill1Controller ?? this.formtextfill1Controller,
      formtextfill2Controller:
      formtextfill2Controller ?? this.formtextfill2Controller,
      whatWillIShipOneModelObj:
      whatWillIShipOneModelObj ?? this.whatWillIShipOneModelObj,
    );
  }
}
