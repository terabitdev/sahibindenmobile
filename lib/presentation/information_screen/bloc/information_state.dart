part of 'information_bloc.dart';

/// Represents the state of Information in the application.

// ignore_for_file: must_be_immutable
class InformationState extends Equatable {
  InformationState({this.informationinfoTabModelObj, this.informationModelObj});

  InformationModel? informationModelObj;

  InformationinfoTabModel? informationinfoTabModelObj;

  @override
  List<Object?> get props => [informationinfoTabModelObj, informationModelObj];
  InformationState copyWith({
    InformationinfoTabModel? informationinfoTabModelObj,
    InformationModel? informationModelObj,
  }) {
    return InformationState(
      informationinfoTabModelObj:
      informationinfoTabModelObj ?? this.informationinfoTabModelObj,
      informationModelObj: informationModelObj ?? this.informationModelObj,
    );
  }
}
