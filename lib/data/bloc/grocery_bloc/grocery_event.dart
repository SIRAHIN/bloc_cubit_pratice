import 'package:bloc_practice/data/models/grocery_model/grocery_model.dart';

class GroceryEvent {}

class LoadGroceryEvent extends GroceryEvent {}

class AddGroceryItemEvent extends GroceryEvent {
  final List<GroceryItem> itemWishList;

  AddGroceryItemEvent(this.itemWishList);
}
class RemoveGroceryItemEvent extends GroceryEvent {
  final List<GroceryItem> itemWishList;

  RemoveGroceryItemEvent(this.itemWishList);
}