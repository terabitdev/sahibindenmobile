part of 'messages_bloc.dart';

/// Represents the state of Messages in the application.

// ignore_for_file: must_be_immutable
class MessagesState extends Equatable {
  MessagesState({this.scrollviewTab1ModelObj, this.messagesModelObj});

  MessagesModel? messagesModelObj;

  ScrollviewTab1Model? scrollviewTab1ModelObj;

  @override
  List<Object?> get props => [scrollviewTab1ModelObj, messagesModelObj];
  MessagesState copyWith({
    ScrollviewTab1Model? scrollviewTab1ModelObj,
    MessagesModel? messagesModelObj,
  }) {
    return MessagesState(
      scrollviewTab1ModelObj:
      scrollviewTab1ModelObj ?? this.scrollviewTab1ModelObj,
      messagesModelObj: messagesModelObj ?? this.messagesModelObj,
    );
  }
}
