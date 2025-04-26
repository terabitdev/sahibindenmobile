part of 'test_user_four_bloc.dart';

/// Represents the state of TestUserFour in the application.

// ignore_for_file: must_be_immutable
class TestUserFourState extends Equatable {
  TestUserFourState(
      {this.whatsonairController,
        this.group2507oneController,
        this.messageController,
        this.messageoneController,
        this.informationoneController,
        this.specialadsforController,
        this.favoriteController,
        this.searchController,
        this.favorite1Controller,
        this.group2523oneController,
        this.group2525oneController,
        this.group2527oneController,
        this.group2529oneController,
        this.mysavedcardsController,
        this.helpguideoneController,
        this.group2535oneController,
        this.aboutoneController,
        this.group2539oneController,
        this.cookiesoneController,
        this.testUserFourModelObj});

  TextEditingController? whatsonairController;

  TextEditingController? group2507oneController;

  TextEditingController? messageController;

  TextEditingController? messageoneController;

  TextEditingController? informationoneController;

  TextEditingController? specialadsforController;

  TextEditingController? favoriteController;

  TextEditingController? searchController;

  TextEditingController? favorite1Controller;

  TextEditingController? group2523oneController;

  TextEditingController? group2525oneController;

  TextEditingController? group2527oneController;

  TextEditingController? group2529oneController;

  TextEditingController? mysavedcardsController;

  TextEditingController? helpguideoneController;

  TextEditingController? group2535oneController;

  TextEditingController? aboutoneController;

  TextEditingController? group2539oneController;

  TextEditingController? cookiesoneController;

  TestUserFourModel? testUserFourModelObj;

  @override
  List<Object?> get props => [
    whatsonairController,
    group2507oneController,
    messageController,
    messageoneController,
    informationoneController,
    specialadsforController,
    favoriteController,
    searchController,
    favorite1Controller,
    group2523oneController,
    group2525oneController,
    group2527oneController,
    group2529oneController,
    mysavedcardsController,
    helpguideoneController,
    group2535oneController,
    aboutoneController,
    group2539oneController,
    cookiesoneController,
    testUserFourModelObj
  ];
  TestUserFourState copyWith({
    TextEditingController? whatsonairController,
    TextEditingController? group2507oneController,
    TextEditingController? messageController,
    TextEditingController? messageoneController,
    TextEditingController? informationoneController,
    TextEditingController? specialadsforController,
    TextEditingController? favoriteController,
    TextEditingController? searchController,
    TextEditingController? favorite1Controller,
    TextEditingController? group2523oneController,
    TextEditingController? group2525oneController,
    TextEditingController? group2527oneController,
    TextEditingController? group2529oneController,
    TextEditingController? mysavedcardsController,
    TextEditingController? helpguideoneController,
    TextEditingController? group2535oneController,
    TextEditingController? aboutoneController,
    TextEditingController? group2539oneController,
    TextEditingController? cookiesoneController,
    TestUserFourModel? testUserFourModelObj,
  }) {
    return TestUserFourState(
      whatsonairController: whatsonairController ?? this.whatsonairController,
      group2507oneController:
      group2507oneController ?? this.group2507oneController,
      messageController: messageController ?? this.messageController,
      messageoneController: messageoneController ?? this.messageoneController,
      informationoneController:
      informationoneController ?? this.informationoneController,
      specialadsforController:
      specialadsforController ?? this.specialadsforController,
      favoriteController: favoriteController ?? this.favoriteController,
      searchController: searchController ?? this.searchController,
      favorite1Controller: favorite1Controller ?? this.favorite1Controller,
      group2523oneController:
      group2523oneController ?? this.group2523oneController,
      group2525oneController:
      group2525oneController ?? this.group2525oneController,
      group2527oneController:
      group2527oneController ?? this.group2527oneController,
      group2529oneController:
      group2529oneController ?? this.group2529oneController,
      mysavedcardsController:
      mysavedcardsController ?? this.mysavedcardsController,
      helpguideoneController:
      helpguideoneController ?? this.helpguideoneController,
      group2535oneController:
      group2535oneController ?? this.group2535oneController,
      aboutoneController: aboutoneController ?? this.aboutoneController,
      group2539oneController:
      group2539oneController ?? this.group2539oneController,
      cookiesoneController: cookiesoneController ?? this.cookiesoneController,
      testUserFourModelObj: testUserFourModelObj ?? this.testUserFourModelObj,
    );
  }
}
