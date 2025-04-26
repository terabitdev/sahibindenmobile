part of 'test_user_bloc.dart';

/// Represents the state of TestUser in the application.

// ignore_for_file: must_be_immutable
class TestUserState extends Equatable {
  TestUserState(
      {this.whatsonairController,
        this.group2306oneController,
        this.messageController,
        this.messageoneController,
        this.informationoneController,
        this.specialadsforController,
        this.favoriteController,
        this.searchController,
        this.favorite1Controller,
        this.group2354oneController,
        this.group2359oneController,
        this.group2434oneController,
        this.group2439oneController,
        this.mysavedcardsController,
        this.helpguideoneController,
        this.group2469oneController,
        this.aboutoneController,
        this.group2477oneController,
        this.cookiesoneController,
        this.testUserModelObj});

  TextEditingController? whatsonairController;

  TextEditingController? group2306oneController;

  TextEditingController? messageController;

  TextEditingController? messageoneController;

  TextEditingController? informationoneController;

  TextEditingController? specialadsforController;

  TextEditingController? favoriteController;

  TextEditingController? searchController;

  TextEditingController? favorite1Controller;

  TextEditingController? group2354oneController;

  TextEditingController? group2359oneController;

  TextEditingController? group2434oneController;

  TextEditingController? group2439oneController;

  TextEditingController? mysavedcardsController;

  TextEditingController? helpguideoneController;

  TextEditingController? group2469oneController;

  TextEditingController? aboutoneController;

  TextEditingController? group2477oneController;

  TextEditingController? cookiesoneController;

  TestUserModel? testUserModelObj;

  @override
  List<Object?> get props => [
    whatsonairController,
    group2306oneController,
    messageController,
    messageoneController,
    informationoneController,
    specialadsforController,
    favoriteController,
    searchController,
    favorite1Controller,
    group2354oneController,
    group2359oneController,
    group2434oneController,
    group2439oneController,
    mysavedcardsController,
    helpguideoneController,
    group2469oneController,
    aboutoneController,
    group2477oneController,
    cookiesoneController,
    testUserModelObj
  ];
  TestUserState copyWith({
    TextEditingController? whatsonairController,
    TextEditingController? group2306oneController,
    TextEditingController? messageController,
    TextEditingController? messageoneController,
    TextEditingController? informationoneController,
    TextEditingController? specialadsforController,
    TextEditingController? favoriteController,
    TextEditingController? searchController,
    TextEditingController? favorite1Controller,
    TextEditingController? group2354oneController,
    TextEditingController? group2359oneController,
    TextEditingController? group2434oneController,
    TextEditingController? group2439oneController,
    TextEditingController? mysavedcardsController,
    TextEditingController? helpguideoneController,
    TextEditingController? group2469oneController,
    TextEditingController? aboutoneController,
    TextEditingController? group2477oneController,
    TextEditingController? cookiesoneController,
    TestUserModel? testUserModelObj,
  }) {
    return TestUserState(
      whatsonairController: whatsonairController ?? this.whatsonairController,
      group2306oneController:
      group2306oneController ?? this.group2306oneController,
      messageController: messageController ?? this.messageController,
      messageoneController: messageoneController ?? this.messageoneController,
      informationoneController:
      informationoneController ?? this.informationoneController,
      specialadsforController:
      specialadsforController ?? this.specialadsforController,
      favoriteController: favoriteController ?? this.favoriteController,
      searchController: searchController ?? this.searchController,
      favorite1Controller: favorite1Controller ?? this.favorite1Controller,
      group2354oneController:
      group2354oneController ?? this.group2354oneController,
      group2359oneController:
      group2359oneController ?? this.group2359oneController,
      group2434oneController:
      group2434oneController ?? this.group2434oneController,
      group2439oneController:
      group2439oneController ?? this.group2439oneController,
      mysavedcardsController:
      mysavedcardsController ?? this.mysavedcardsController,
      helpguideoneController:
      helpguideoneController ?? this.helpguideoneController,
      group2469oneController:
      group2469oneController ?? this.group2469oneController,
      aboutoneController: aboutoneController ?? this.aboutoneController,
      group2477oneController:
      group2477oneController ?? this.group2477oneController,
      cookiesoneController: cookiesoneController ?? this.cookiesoneController,
      testUserModelObj: testUserModelObj ?? this.testUserModelObj,
    );
  }
}
