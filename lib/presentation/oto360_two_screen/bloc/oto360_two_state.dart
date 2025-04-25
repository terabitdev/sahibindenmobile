part of 'oto360_two_bloc.dart';

/// Represents the state of Oto360Two in the application.

// ignore_for_file: must_be_immutable
class Oto360TwoState extends Equatable {
  Oto360TwoState({this.oto360TwoModelObj});

  Oto360TwoModel? oto360TwoModelObj;

  @override
  List<Object?> get props => [oto360TwoModelObj];
  Oto360TwoState copyWith({Oto360TwoModel? oto360TwoModelObj}) {
    return Oto360TwoState(
      oto360TwoModelObj: oto360TwoModelObj ?? this.oto360TwoModelObj,
    );
  }
}
