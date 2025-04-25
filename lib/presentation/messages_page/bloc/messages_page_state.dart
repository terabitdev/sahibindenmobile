part of 'messages_page_bloc.dart';

/// Represents the state of MessagesOne in the application.

// ignore_for_file: must_be_immutable
class MessagesOneState extends Equatable {
  MessagesOneState(
      {this.formtextfillController,
        this.formtextfill1Controller,
        this.dateController,
        this.pricetwoController,
        this.messagesTwoTabModelObj,
        // this.messagesOneModelObj
      });

  TextEditingController? formtextfillController;

  TextEditingController? formtextfill1Controller;

  TextEditingController? dateController;

  TextEditingController? pricetwoController;

  // MessagesOneModel? messagesOneModelObj;

  MessagesTwoTabModel? messagesTwoTabModelObj;

  @override
  List<Object?> get props => [
    formtextfillController,
    formtextfill1Controller,
    dateController,
    pricetwoController,
    messagesTwoTabModelObj,
    // messagesOneModelObj
  ];
  MessagesOneState copyWith({
    TextEditingController? formtextfillController,
    TextEditingController? formtextfill1Controller,
    TextEditingController? dateController,
    TextEditingController? pricetwoController,
    MessagesTwoTabModel? messagesTwoTabModelObj,
    // MessagesOneModel? messagesOneModelObj,
  }) {
    return MessagesOneState(
      formtextfillController:
      formtextfillController ?? this.formtextfillController,
      formtextfill1Controller:
      formtextfill1Controller ?? this.formtextfill1Controller,
      dateController: dateController ?? this.dateController,
      pricetwoController: pricetwoController ?? this.pricetwoController,
      messagesTwoTabModelObj:
      messagesTwoTabModelObj ?? this.messagesTwoTabModelObj,
      // messagesOneModelObj: messagesOneModelObj ?? this.messagesOneModelObj,
    );
  }
}
