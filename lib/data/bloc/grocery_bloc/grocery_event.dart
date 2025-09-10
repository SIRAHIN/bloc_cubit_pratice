import 'package:bloc_practice/data/models/grocery_model/grocery_model.dart';

class GroceryEvent {}

class LoadGroceryEvent extends GroceryEvent {}

class AddGroceryItemEvent extends GroceryEvent {
  final GroceryItem itemWishItem;

  AddGroceryItemEvent(this.itemWishItem);
}
class RemoveGroceryItemEvent extends GroceryEvent {
  final GroceryItem itemWishItem;

  RemoveGroceryItemEvent(this.itemWishItem);
}

class getTotalPrice extends GroceryEvent {
  double totalPrice;
  getTotalPrice({required this.totalPrice});
}