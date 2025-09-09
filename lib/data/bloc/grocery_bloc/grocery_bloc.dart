import 'package:bloc_practice/data/bloc/grocery_bloc/grocery_event.dart';
import 'package:bloc_practice/data/bloc/grocery_bloc/grocery_state.dart';
import 'package:bloc_practice/data/grocery_data.dart';
import 'package:bloc_practice/data/models/grocery_model/grocery_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroceryBloc extends Bloc<GroceryEvent, GroceryState> {
  GroceryBloc() : super(GroceryState()) {
    List<GroceryItem> groceryList = [];
    List<GroceryItem> groceryWishtList = [];

    on<LoadGroceryEvent>((event, emit) {
      final parseGroceryData = GroceryData.groceryItems
          .map((item) => GroceryItem.fromJson(item))
          .toList();
      groceryList.addAll(parseGroceryData);
      emit(GroceryState(items: groceryList, itemswithList: groceryWishtList));
    });

    on<AddGroceryItemEvent>((event, emit) {
      print("Adding items to wishlist");
      for (var item in event.itemWishList) {
        // if (!groceryWishtList.contains(item)) {
        //   groceryWishtList.add(item);
        // }

        // Another way to check for duplicates based on id //
        if (groceryWishtList.any((element) => element.id == item.id)) {
          return;
        } else {
          groceryWishtList.add(item);
        }
      }
      emit((GroceryState(items: groceryList, itemswithList: groceryWishtList)));
    });

    on<RemoveGroceryItemEvent>((event, emit) {
      print("Removing items from wishlist");
      for (var item in event.itemWishList) {
        groceryWishtList.remove(item);
      }
      emit(GroceryState(items: groceryList, itemswithList: groceryWishtList));
    });
  }
}
