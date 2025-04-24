part of 'get_messages_bloc.dart';

/// Represents the state of GetMessages in the application.

// ignore_for_file: must_be_immutable
class GetMessagesState extends Equatable {
  GetMessagesState({this.messageController, this.getMessagesModelObj});

  TextEditingController? messageController;

  GetMessagesModel? getMessagesModelObj;

  @override
  List<Object?> get props => [messageController, getMessagesModelObj];
  GetMessagesState copyWith({
    TextEditingController? messageController,
    GetMessagesModel? getMessagesModelObj,
  }) {
    return GetMessagesState(
      messageController: messageController ?? this.messageController,
      getMessagesModelObj: getMessagesModelObj ?? this.getMessagesModelObj,
    );
  }
}
