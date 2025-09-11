import 'package:bloc_practice/data/models/product_model/product_model.dart';

class PaginationState {}

class PaginationInitial extends PaginationState {}

class PaginationLoading extends PaginationState {}

class PaginationLoaded extends PaginationState {
  final List<Product> items;
  final bool hasReachedMax;

  PaginationLoaded({required this.items, required this.hasReachedMax});

  PaginationLoaded copyWith({
    List<Product> ? items,
    bool? hasReachedMax,
  }) {
    return PaginationLoaded(
      items: items ?? this.items,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }
}