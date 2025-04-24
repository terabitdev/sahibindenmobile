part of 'cookies_bloc.dart';

/// Represents the state of Cookies in the application.

// ignore_for_file: must_be_immutable
class CookiesState extends Equatable {
  CookiesState({this.cookiesModelObj});

  CookiesModel? cookiesModelObj;

  @override
  List<Object?> get props => [cookiesModelObj];
  CookiesState copyWith({CookiesModel? cookiesModelObj}) {
    return CookiesState(
      cookiesModelObj: cookiesModelObj ?? this.cookiesModelObj,
    );
  }
}
