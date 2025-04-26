part of 'while_selling_bloc.dart';

/// Represents the state of WhileSelling in the application.

// ignore_for_file: must_be_immutable
class WhileSellingState extends Equatable {
  WhileSellingState({this.whileSellingModelObj});

  WhileSellingModel? whileSellingModelObj;

  @override
  List<Object?> get props => [whileSellingModelObj];
  WhileSellingState copyWith({WhileSellingModel? whileSellingModelObj}) {
    return WhileSellingState(
      whileSellingModelObj: whileSellingModelObj ?? this.whileSellingModelObj,
    );
  }
}
