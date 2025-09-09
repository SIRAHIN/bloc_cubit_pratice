import 'package:bloc_practice/data/models/grocery_model/grocery_model.dart';

class GroceryState {
  GroceryState({this.items = const [], this.itemswithList = const []});
  final List<GroceryItem> items;
  final List<GroceryItem> itemswithList;
}



