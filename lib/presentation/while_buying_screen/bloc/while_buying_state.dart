part of 'while_buying_bloc.dart';

/// Represents the state of WhileBuying in the application.

// ignore_for_file: must_be_immutable
class WhileBuyingState extends Equatable {
  WhileBuyingState({this.whileBuyingModelObj});

  WhileBuyingModel? whileBuyingModelObj;

  @override
  List<Object?> get props => [whileBuyingModelObj];
  WhileBuyingState copyWith({WhileBuyingModel? whileBuyingModelObj}) {
    return WhileBuyingState(
      whileBuyingModelObj: whileBuyingModelObj ?? this.whileBuyingModelObj,
    );
  }
}
