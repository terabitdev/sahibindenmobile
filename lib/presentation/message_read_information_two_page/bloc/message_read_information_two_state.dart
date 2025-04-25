part of 'message_read_information_two_bloc.dart';

/// Represents the state of MessageReadInformationTwo in the application.

// ignore_for_file: must_be_immutable
class MessageReadInformationTwoState extends Equatable {
  MessageReadInformationTwoState(
      {this.isSelectedSwitch = false, this.messageReadInformationTwoModelObj});

  MessageReadInformationTwoModel? messageReadInformationTwoModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props =>
      [isSelectedSwitch, messageReadInformationTwoModelObj];
  MessageReadInformationTwoState copyWith({
    bool? isSelectedSwitch,
    MessageReadInformationTwoModel? messageReadInformationTwoModelObj,
  }) {
    return MessageReadInformationTwoState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      messageReadInformationTwoModelObj: messageReadInformationTwoModelObj ??
          this.messageReadInformationTwoModelObj,
    );
  }
}
