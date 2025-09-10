import 'package:bloc_practice/data/bloc/grocery_bloc/grocery_event.dart';
import 'package:bloc_practice/data/bloc/grocery_bloc/grocery_state.dart';
import 'package:bloc_practice/data/grocery_data.dart';
import 'package:bloc_practice/data/models/grocery_model/grocery_model.dart';
import 'package:bloc_practice/presentation/hive_screen/const/hive_box_const.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroceryBloc extends Bloc<GroceryEvent, GroceryState> {
  GroceryBloc() : super(GroceryState()) {
    List<GroceryItem> groceryList = [];
    List<GroceryItem> groceryWishtList = [];
    double totalPrice = 0.0;

    // Function to calculate the total price of items in the wishlist //
    void totalPriceCalculate() {
      totalPrice = 0.0; // Reset always
      for (var item in groceryWishtList) {
        totalPrice += item.price;
      }

      // Alternative using fold method //
      // totalPrice = groceryWishtList.fold(
      //   0.0, // initial value
      //   (sum, item) => sum + item.price,
      // );
    }

    on<LoadGroceryEvent>((event, emit) {
      // Parse the grocery data from JSON and convert it to a list of GroceryItem objects //
      final parseGroceryData = GroceryData.groceryItems
          .map((item) => GroceryItem.fromJson(item))
          .toList();
      // Add the parsed grocery data to the grocery list //
      groceryList.addAll(parseGroceryData);

      // Load existing items from the Hive box into the wishlist //
      List<GroceryItem> existingItems =
          HiveBoxConst.instance.groceryBox.values.toList().cast<GroceryItem>();
      // Initialize the grocery list and wishlist //
      groceryWishtList.addAll(existingItems);

      // Calculate the total price of items in the wishlist //
      totalPriceCalculate();

      // Emit the initial state with both lists populated //
      emit(GroceryState(
          items: groceryList,
          itemswithList: groceryWishtList,
          totoalPrice: totalPrice));
    });

    // =========== Add Item to the Wishlist =========== //
    on<AddGroceryItemEvent>((event, emit) async {
      // Check if the item already exists in the box before adding //
      if (!HiveBoxConst.instance.groceryBox
          .containsKey(event.itemWishItem.id)) {
        // Add the item to the Hive box //
        await HiveBoxConst.instance.groceryBox
            .put(event.itemWishItem.id, event.itemWishItem);
      }
      // Retrieve the updated list from the Hive box //
      groceryWishtList =
          HiveBoxConst.instance.groceryBox.values.toList().cast<GroceryItem>();

      // Reset total price before recalculation //
      totalPriceCalculate();

      // Emit the updated state with the new list //
      emit(GroceryState(
          items: groceryList,
          itemswithList: groceryWishtList,
          totoalPrice: totalPrice));
    });

    // =========== Remove Item from the Wishlist =========== //
    on<RemoveGroceryItemEvent>((event, emit) async {
      // Remove the item from the Hive box if it exists //
      if (HiveBoxConst.instance.groceryBox.containsKey(event.itemWishItem.id)) {
        // Remove the item from the Hive box //
        await HiveBoxConst.instance.groceryBox.delete(event.itemWishItem.id);
      }

      // Retrieve the updated list from the Hive box //
      groceryWishtList =
          HiveBoxConst.instance.groceryBox.values.toList().cast<GroceryItem>();

      // Reset total price before recalculation //
      totalPriceCalculate();

      // Emit the updated state with the new list //
      emit(GroceryState(
          items: groceryList,
          itemswithList: groceryWishtList,
          totoalPrice: totalPrice));
    });
  }
}
