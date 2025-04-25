part of 'my_bank_information_one_bloc.dart';

/// Represents the state of MyBankInformationOne in the application.

// ignore_for_file: must_be_immutable
class MyBankInformationOneState extends Equatable {
  MyBankInformationOneState(
      {this.formtextfillController,
        this.formtextfill1Controller,
        this.surnameController,
        this.addressController,
        this.nameController,
        this.saveasmycurrent = false,
        this.myBankInformationOneModelObj});

  TextEditingController? formtextfillController;

  TextEditingController? formtextfill1Controller;

  TextEditingController? surnameController;

  TextEditingController? addressController;

  TextEditingController? nameController;

  MyBankInformationOneModel? myBankInformationOneModelObj;

  bool saveasmycurrent;

  @override
  List<Object?> get props => [
    formtextfillController,
    formtextfill1Controller,
    surnameController,
    addressController,
    nameController,
    saveasmycurrent,
    myBankInformationOneModelObj
  ];
  MyBankInformationOneState copyWith({
    TextEditingController? formtextfillController,
    TextEditingController? formtextfill1Controller,
    TextEditingController? surnameController,
    TextEditingController? addressController,
    TextEditingController? nameController,
    bool? saveasmycurrent,
    MyBankInformationOneModel? myBankInformationOneModelObj,
  }) {
    return MyBankInformationOneState(
      formtextfillController:
      formtextfillController ?? this.formtextfillController,
      formtextfill1Controller:
      formtextfill1Controller ?? this.formtextfill1Controller,
      surnameController: surnameController ?? this.surnameController,
      addressController: addressController ?? this.addressController,
      nameController: nameController ?? this.nameController,
      saveasmycurrent: saveasmycurrent ?? this.saveasmycurrent,
      myBankInformationOneModelObj:
      myBankInformationOneModelObj ?? this.myBankInformationOneModelObj,
    );
  }
}
