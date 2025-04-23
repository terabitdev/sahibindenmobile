part of 'about_bloc.dart';

/// Represents the state of About in the application.
// ignore_for_file: must_be_immutable
class AboutState extends Equatable {
  AboutState({this.aboutModelObj});

  AboutModel? aboutModelObj;

  @override
  List<Object?> get props => [aboutModelObj];

  AboutState copyWith({AboutModel? aboutModelObj}) {
    return AboutState(
      aboutModelObj: aboutModelObj ?? this.aboutModelObj,
    );
  }
}
