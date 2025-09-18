import 'package:bloc_practice/data/cubit/filter_cubit/filter_cubit_state.dart';
import 'package:bloc_practice/data/grocery_data.dart';
import 'package:bloc_practice/data/models/grocery_model/grocery_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterCubit extends Cubit<FilterCubitState> {
  final List<GroceryItem> itemData = [];

  FilterCubit() : super(FilterInitial([])) {
    _groceryItemParse();
  }

  // Parse grocery items from JSON data in constructor //
  void _groceryItemParse() {
    List<GroceryItem> data = [];
    for (var item in GroceryData.groceryItems) {
      data.add(GroceryItem.fromJson(item));
    }
    itemData.addAll(data);
    emit(FilterInitial(itemData));
  }

  // Filter items based on the search query //
  void FilterItem(String query) {
    final filter = itemData
        .where((item) => item.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
    if (filter.isEmpty) {
      emit(FilterNotFound("No Item Found"));
    } else {
      emit(FilterListed(filter));
    }
  }
}
