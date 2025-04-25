import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'category_item_model.dart';
import 'messages_three_item_model.dart';

/// This class is used in the [scrollview_tab1_page] screen.

// ignore_for_file: must_be_immutable
class ScrollviewTab1Model extends Equatable {
  ScrollviewTab1Model(
      {this.categoryItemList = const [],
        this.messagesThreeItemList = const []});

  List<CategoryItemModel> categoryItemList;

  List<MessagesThreeItemModel> messagesThreeItemList;

  ScrollviewTab1Model copyWith({
    List<CategoryItemModel>? categoryItemList,
    List<MessagesThreeItemModel>? messagesThreeItemList,
  }) {
    return ScrollviewTab1Model(
      categoryItemList: categoryItemList ?? this.categoryItemList,
      messagesThreeItemList:
      messagesThreeItemList ?? this.messagesThreeItemList,
    );
  }

  @override
  List<Object?> get props => [categoryItemList, messagesThreeItemList];
}
