part of 'test_user_five_bloc.dart';

/// Represents the state of TestUserFive in the application.

// ignore_for_file: must_be_immutable
class TestUserFiveState extends Equatable {
  TestUserFiveState(
      {this.whatsonairController,
        this.group2311oneController,
        this.messageController,
        this.messageoneController,
        this.informationoneController,
        this.specialadsforController,
        this.favoriteController,
        this.searchController,
        this.favorite1Controller,
        this.group2371oneController,
        this.group2373oneController,
        this.group2375oneController,
        this.group2377oneController,
        this.mysavedcardsController,
        this.helpguideoneController,
        this.group2383oneController,
        this.aboutoneController,
        this.group2387oneController,
        this.cookiesoneController,
        this.testUserFiveModelObj});

  TextEditingController? whatsonairController;

  TextEditingController? group2311oneController;

  TextEditingController? messageController;

  TextEditingController? messageoneController;

  TextEditingController? informationoneController;

  TextEditingController? specialadsforController;

  TextEditingController? favoriteController;

  TextEditingController? searchController;

  TextEditingController? favorite1Controller;

  TextEditingController? group2371oneController;

  TextEditingController? group2373oneController;

  TextEditingController? group2375oneController;

  TextEditingController? group2377oneController;

  TextEditingController? mysavedcardsController;

  TextEditingController? helpguideoneController;

  TextEditingController? group2383oneController;

  TextEditingController? aboutoneController;

  TextEditingController? group2387oneController;

  TextEditingController? cookiesoneController;

  TestUserFiveModel? testUserFiveModelObj;

  @override
  List<Object?> get props => [
    whatsonairController,
    group2311oneController,
    messageController,
    messageoneController,
    informationoneController,
    specialadsforController,
    favoriteController,
    searchController,
    favorite1Controller,
    group2371oneController,
    group2373oneController,
    group2375oneController,
    group2377oneController,
    mysavedcardsController,
    helpguideoneController,
    group2383oneController,
    aboutoneController,
    group2387oneController,
    cookiesoneController,
    testUserFiveModelObj
  ];
  TestUserFiveState copyWith({
    TextEditingController? whatsonairController,
    TextEditingController? group2311oneController,
    TextEditingController? messageController,
    TextEditingController? messageoneController,
    TextEditingController? informationoneController,
    TextEditingController? specialadsforController,
    TextEditingController? favoriteController,
    TextEditingController? searchController,
    TextEditingController? favorite1Controller,
    TextEditingController? group2371oneController,
    TextEditingController? group2373oneController,
    TextEditingController? group2375oneController,
    TextEditingController? group2377oneController,
    TextEditingController? mysavedcardsController,
    TextEditingController? helpguideoneController,
    TextEditingController? group2383oneController,
    TextEditingController? aboutoneController,
    TextEditingController? group2387oneController,
    TextEditingController? cookiesoneController,
    TestUserFiveModel? testUserFiveModelObj,
  }) {
    return TestUserFiveState(
      whatsonairController: whatsonairController ?? this.whatsonairController,
      group2311oneController:
      group2311oneController ?? this.group2311oneController,
      messageController: messageController ?? this.messageController,
      messageoneController: messageoneController ?? this.messageoneController,
      informationoneController:
      informationoneController ?? this.informationoneController,
      specialadsforController:
      specialadsforController ?? this.specialadsforController,
      favoriteController: favoriteController ?? this.favoriteController,
      searchController: searchController ?? this.searchController,
      favorite1Controller: favorite1Controller ?? this.favorite1Controller,
      group2371oneController:
      group2371oneController ?? this.group2371oneController,
      group2373oneController:
      group2373oneController ?? this.group2373oneController,
      group2375oneController:
      group2375oneController ?? this.group2375oneController,
      group2377oneController:
      group2377oneController ?? this.group2377oneController,
      mysavedcardsController:
      mysavedcardsController ?? this.mysavedcardsController,
      helpguideoneController:
      helpguideoneController ?? this.helpguideoneController,
      group2383oneController:
      group2383oneController ?? this.group2383oneController,
      aboutoneController: aboutoneController ?? this.aboutoneController,
      group2387oneController:
      group2387oneController ?? this.group2387oneController,
      cookiesoneController: cookiesoneController ?? this.cookiesoneController,
      testUserFiveModelObj: testUserFiveModelObj ?? this.testUserFiveModelObj,
    );
  }
}
