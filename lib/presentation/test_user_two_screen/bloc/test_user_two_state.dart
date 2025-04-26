part of 'test_user_two_bloc.dart';

/// Represents the state of TestUserTwo in the application.

// ignore_for_file: must_be_immutable
class TestUserTwoState extends Equatable {
  TestUserTwoState(
      {this.whatsonairController,
        this.group2404oneController,
        this.messageController,
        this.messageoneController,
        this.informationoneController,
        this.specialadsforController,
        this.favoriteController,
        this.searchController,
        this.favorite1Controller,
        this.group2479oneController,
        this.group2484oneController,
        this.group2488oneController,
        this.group2491oneController,
        this.mysavedcardsController,
        this.helpguideoneController,
        this.group2497oneController,
        this.aboutoneController,
        this.group2501oneController,
        this.cookiesoneController,
        this.testUserTwoModelObj});

  TextEditingController? whatsonairController;

  TextEditingController? group2404oneController;

  TextEditingController? messageController;

  TextEditingController? messageoneController;

  TextEditingController? informationoneController;

  TextEditingController? specialadsforController;

  TextEditingController? favoriteController;

  TextEditingController? searchController;

  TextEditingController? favorite1Controller;

  TextEditingController? group2479oneController;

  TextEditingController? group2484oneController;

  TextEditingController? group2488oneController;

  TextEditingController? group2491oneController;

  TextEditingController? mysavedcardsController;

  TextEditingController? helpguideoneController;

  TextEditingController? group2497oneController;

  TextEditingController? aboutoneController;

  TextEditingController? group2501oneController;

  TextEditingController? cookiesoneController;

  TestUserTwoModel? testUserTwoModelObj;

  @override
  List<Object?> get props => [
    whatsonairController,
    group2404oneController,
    messageController,
    messageoneController,
    informationoneController,
    specialadsforController,
    favoriteController,
    searchController,
    favorite1Controller,
    group2479oneController,
    group2484oneController,
    group2488oneController,
    group2491oneController,
    mysavedcardsController,
    helpguideoneController,
    group2497oneController,
    aboutoneController,
    group2501oneController,
    cookiesoneController,
    testUserTwoModelObj
  ];
  TestUserTwoState copyWith({
    TextEditingController? whatsonairController,
    TextEditingController? group2404oneController,
    TextEditingController? messageController,
    TextEditingController? messageoneController,
    TextEditingController? informationoneController,
    TextEditingController? specialadsforController,
    TextEditingController? favoriteController,
    TextEditingController? searchController,
    TextEditingController? favorite1Controller,
    TextEditingController? group2479oneController,
    TextEditingController? group2484oneController,
    TextEditingController? group2488oneController,
    TextEditingController? group2491oneController,
    TextEditingController? mysavedcardsController,
    TextEditingController? helpguideoneController,
    TextEditingController? group2497oneController,
    TextEditingController? aboutoneController,
    TextEditingController? group2501oneController,
    TextEditingController? cookiesoneController,
    TestUserTwoModel? testUserTwoModelObj,
  }) {
    return TestUserTwoState(
      whatsonairController: whatsonairController ?? this.whatsonairController,
      group2404oneController:
      group2404oneController ?? this.group2404oneController,
      messageController: messageController ?? this.messageController,
      messageoneController: messageoneController ?? this.messageoneController,
      informationoneController:
      informationoneController ?? this.informationoneController,
      specialadsforController:
      specialadsforController ?? this.specialadsforController,
      favoriteController: favoriteController ?? this.favoriteController,
      searchController: searchController ?? this.searchController,
      favorite1Controller: favorite1Controller ?? this.favorite1Controller,
      group2479oneController:
      group2479oneController ?? this.group2479oneController,
      group2484oneController:
      group2484oneController ?? this.group2484oneController,
      group2488oneController:
      group2488oneController ?? this.group2488oneController,
      group2491oneController:
      group2491oneController ?? this.group2491oneController,
      mysavedcardsController:
      mysavedcardsController ?? this.mysavedcardsController,
      helpguideoneController:
      helpguideoneController ?? this.helpguideoneController,
      group2497oneController:
      group2497oneController ?? this.group2497oneController,
      aboutoneController: aboutoneController ?? this.aboutoneController,
      group2501oneController:
      group2501oneController ?? this.group2501oneController,
      cookiesoneController: cookiesoneController ?? this.cookiesoneController,
      testUserTwoModelObj: testUserTwoModelObj ?? this.testUserTwoModelObj,
    );
  }
}
