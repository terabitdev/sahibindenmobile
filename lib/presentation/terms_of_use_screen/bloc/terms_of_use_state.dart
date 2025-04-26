part of 'terms_of_use_bloc.dart';

/// Represents the state of TermsOfUse in the application.

// ignore_for_file: must_be_immutable
class TermsOfUseState extends Equatable {
  TermsOfUseState({this.termsOfUseModelObj});

  TermsOfUseModel? termsOfUseModelObj;

  @override
  List<Object?> get props => [termsOfUseModelObj];
  TermsOfUseState copyWith({TermsOfUseModel? termsOfUseModelObj}) {
    return TermsOfUseState(
      termsOfUseModelObj: termsOfUseModelObj ?? this.termsOfUseModelObj,
    );
  }
}
