part of 'what_will_i_ship_bloc.dart';

/// Represents the state of WhatWillIShip in the application.

// ignore_for_file: must_be_immutable
class WhatWillIShipState extends Equatable {
  WhatWillIShipState(
      {this.searchController,
        this.nameController,
        this.formtextfillController,
        this.formtextfill1Controller,
        this.formtextfill2Controller,
        this.whatWillIShipModelObj});

  TextEditingController? searchController;

  TextEditingController? nameController;

  TextEditingController? formtextfillController;

  TextEditingController? formtextfill1Controller;

  TextEditingController? formtextfill2Controller;

  WhatWillIShipModel? whatWillIShipModelObj;

  @override
  List<Object?> get props => [
    searchController,
    nameController,
    formtextfillController,
    formtextfill1Controller,
    formtextfill2Controller,
    whatWillIShipModelObj
  ];
  WhatWillIShipState copyWith({
    TextEditingController? searchController,
    TextEditingController? nameController,
    TextEditingController? formtextfillController,
    TextEditingController? formtextfill1Controller,
    TextEditingController? formtextfill2Controller,
    WhatWillIShipModel? whatWillIShipModelObj,
  }) {
    return WhatWillIShipState(
      searchController: searchController ?? this.searchController,
      nameController: nameController ?? this.nameController,
      formtextfillController:
      formtextfillController ?? this.formtextfillController,
      formtextfill1Controller:
      formtextfill1Controller ?? this.formtextfill1Controller,
      formtextfill2Controller:
      formtextfill2Controller ?? this.formtextfill2Controller,
      whatWillIShipModelObj:
      whatWillIShipModelObj ?? this.whatWillIShipModelObj,
    );
  }
}
