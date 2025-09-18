import 'package:bloc_practice/data/grocery_data.dart';
import 'package:bloc_practice/data/models/grocery_model/grocery_model.dart';

class FilterCubitState {}

class FilterInitial extends FilterCubitState {
  final List<GroceryItem> initalData;
  FilterInitial(this.initalData);
}

class FilterListed extends FilterCubitState {
  final List<GroceryItem> filters;

  FilterListed(this.filters);
}

class FilterNotFound extends FilterCubitState {
  final String message;

  FilterNotFound(this.message);
}