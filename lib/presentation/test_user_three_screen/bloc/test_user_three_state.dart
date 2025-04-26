part of 'test_user_three_bloc.dart';

/// Represents the state of TestUserThree in the application.

// ignore_for_file: must_be_immutable
class TestUserThreeState extends Equatable {
  TestUserThreeState(
      {this.whatsonairController,
        this.group2416oneController,
        this.messageController,
        this.messageoneController,
        this.informationoneController,
        this.specialadsforController,
        this.favoriteController,
        this.searchController,
        this.favorite1Controller,
        this.group2453oneController,
        this.group2457oneController,
        this.group2461oneController,
        this.group2463oneController,
        this.mysavedcardsController,
        this.helpguideoneController,
        this.group2474oneController,
        this.aboutoneController,
        this.group2485oneController,
        this.cookiesoneController,
        this.testUserThreeModelObj});

  TextEditingController? whatsonairController;

  TextEditingController? group2416oneController;

  TextEditingController? messageController;

  TextEditingController? messageoneController;

  TextEditingController? informationoneController;

  TextEditingController? specialadsforController;

  TextEditingController? favoriteController;

  TextEditingController? searchController;

  TextEditingController? favorite1Controller;

  TextEditingController? group2453oneController;

  TextEditingController? group2457oneController;

  TextEditingController? group2461oneController;

  TextEditingController? group2463oneController;

  TextEditingController? mysavedcardsController;

  TextEditingController? helpguideoneController;

  TextEditingController? group2474oneController;

  TextEditingController? aboutoneController;

  TextEditingController? group2485oneController;

  TextEditingController? cookiesoneController;

  TestUserThreeModel? testUserThreeModelObj;

  @override
  List<Object?> get props => [
    whatsonairController,
    group2416oneController,
    messageController,
    messageoneController,
    informationoneController,
    specialadsforController,
    favoriteController,
    searchController,
    favorite1Controller,
    group2453oneController,
    group2457oneController,
    group2461oneController,
    group2463oneController,
    mysavedcardsController,
    helpguideoneController,
    group2474oneController,
    aboutoneController,
    group2485oneController,
    cookiesoneController,
    testUserThreeModelObj
  ];
  TestUserThreeState copyWith({
    TextEditingController? whatsonairController,
    TextEditingController? group2416oneController,
    TextEditingController? messageController,
    TextEditingController? messageoneController,
    TextEditingController? informationoneController,
    TextEditingController? specialadsforController,
    TextEditingController? favoriteController,
    TextEditingController? searchController,
    TextEditingController? favorite1Controller,
    TextEditingController? group2453oneController,
    TextEditingController? group2457oneController,
    TextEditingController? group2461oneController,
    TextEditingController? group2463oneController,
    TextEditingController? mysavedcardsController,
    TextEditingController? helpguideoneController,
    TextEditingController? group2474oneController,
    TextEditingController? aboutoneController,
    TextEditingController? group2485oneController,
    TextEditingController? cookiesoneController,
    TestUserThreeModel? testUserThreeModelObj,
  }) {
    return TestUserThreeState(
      whatsonairController: whatsonairController ?? this.whatsonairController,
      group2416oneController:
      group2416oneController ?? this.group2416oneController,
      messageController: messageController ?? this.messageController,
      messageoneController: messageoneController ?? this.messageoneController,
      informationoneController:
      informationoneController ?? this.informationoneController,
      specialadsforController:
      specialadsforController ?? this.specialadsforController,
      favoriteController: favoriteController ?? this.favoriteController,
      searchController: searchController ?? this.searchController,
      favorite1Controller: favorite1Controller ?? this.favorite1Controller,
      group2453oneController:
      group2453oneController ?? this.group2453oneController,
      group2457oneController:
      group2457oneController ?? this.group2457oneController,
      group2461oneController:
      group2461oneController ?? this.group2461oneController,
      group2463oneController:
      group2463oneController ?? this.group2463oneController,
      mysavedcardsController:
      mysavedcardsController ?? this.mysavedcardsController,
      helpguideoneController:
      helpguideoneController ?? this.helpguideoneController,
      group2474oneController:
      group2474oneController ?? this.group2474oneController,
      aboutoneController: aboutoneController ?? this.aboutoneController,
      group2485oneController:
      group2485oneController ?? this.group2485oneController,
      cookiesoneController: cookiesoneController ?? this.cookiesoneController,
      testUserThreeModelObj:
      testUserThreeModelObj ?? this.testUserThreeModelObj,
    );
  }
}
