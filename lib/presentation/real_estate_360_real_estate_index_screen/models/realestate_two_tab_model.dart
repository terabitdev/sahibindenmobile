import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'chipviewistanbu_item_model.dart';
import 'listkadikoy_item_model.dart';
import 'listview_item_model.dart';

/// This class is used in the [realestate_two_tab_page] screen.

// ignore_for_file: must_be_immutable
class RealestateTwoTabModel extends Equatable {
  RealestateTwoTabModel(
      {this.listkadikoyItemList = const [],
        this.chipviewistanbuItemList = const [],
        this.listviewItemList = const []});

  List<ListkadikoyItemModel> listkadikoyItemList;

  List<ChipviewistanbuItemModel> chipviewistanbuItemList;

  List<ListviewItemModel> listviewItemList;

  RealestateTwoTabModel copyWith({
    List<ListkadikoyItemModel>? listkadikoyItemList,
    List<ChipviewistanbuItemModel>? chipviewistanbuItemList,
    List<ListviewItemModel>? listviewItemList,
  }) {
    return RealestateTwoTabModel(
      listkadikoyItemList: listkadikoyItemList ?? this.listkadikoyItemList,
      chipviewistanbuItemList:
      chipviewistanbuItemList ?? this.chipviewistanbuItemList,
      listviewItemList: listviewItemList ?? this.listviewItemList,
    );
  }

  @override
  List<Object?> get props =>
      [listkadikoyItemList, chipviewistanbuItemList, listviewItemList];
}
