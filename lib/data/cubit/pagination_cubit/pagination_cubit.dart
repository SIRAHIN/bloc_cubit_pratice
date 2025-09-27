
import 'package:bloc_practice/data/cubit/pagination_cubit/pagination_state.dart';
import 'package:bloc_practice/data/models/product_model/product_model.dart';
import 'package:bloc_practice/data/repository/pagination_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class PaginationCubit extends Cubit<PaginationState> {
  final PaginationRepository paginationRepository;
  PaginationCubit(this.paginationRepository) : super(PaginationInitial());

  int offsetNumber = 0;
  List<Product> items = [];

  void fetchItems() async {
    emit(PaginationLoading());

    final productListData =
        await paginationRepository.getProductList(offsetNumber: offsetNumber);

    items.addAll(productListData);

    emit(PaginationLoaded(items: items, hasReachedMax: false));
  }

  onScrollingEvent() async {
    final productListData =
        await paginationRepository.getProductList(offsetNumber: offsetNumber);

    if (productListData.isNotEmpty && productListData != []) {
      items.addAll(productListData);

      emit(PaginationLoaded(items: items, hasReachedMax: false));
      offsetNumber++;
    } else {
      emit(PaginationLoaded(items: items, hasReachedMax: true));
    }
  }
}
