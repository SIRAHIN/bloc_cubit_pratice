import 'dart:math';

import 'package:bloc_practice/dart_practice/depencency_injection/locator.dart';
import 'package:bloc_practice/data/cubit/pagination_cubit/pagination_state.dart';
import 'package:bloc_practice/data/repository/pagination_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class PaginationCubit extends Cubit<PaginationState> {
  PaginationRepository paginationRepository = getIt<PaginationRepository>();
  PaginationCubit() : super(PaginationInitial());

  int offsetNumber = 0;
  List<dynamic> allItems = [];

  void fetchItems() async {
    emit(PaginationLoading());

    final productListData =
        await paginationRepository.getProductList(offsetNumber: offsetNumber);

    if (productListData.isNotEmpty) {
      allItems.addAll(productListData);
      emit(PaginationLoaded(items: List.from(allItems), hasReachedMax: false));
      offsetNumber++;
    } else {
      emit(PaginationLoaded(items: List.from(allItems), hasReachedMax: true));
    }
  }

  onScrollingEvent() async {
    // Avoid multiple simultaneous requests
    if (state is PaginationLoading) return;
    
    final currentState = state;
    if (currentState is PaginationLoaded && currentState.hasReachedMax) {
      return;
    }

    final productListData =
        await paginationRepository.getProductList(offsetNumber: offsetNumber);

    if (productListData.isNotEmpty) {
      allItems.addAll(productListData);
      emit(PaginationLoaded(items: List.from(allItems), hasReachedMax: false));
      offsetNumber++;
    } else {
      emit(PaginationLoaded(items: List.from(allItems), hasReachedMax: true));
    }
  }
}