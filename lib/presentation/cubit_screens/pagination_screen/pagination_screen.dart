import 'dart:async';

import 'package:bloc_practice/data/cubit/pagination_cubit/pagination_cubit.dart';
import 'package:bloc_practice/data/cubit/pagination_cubit/pagination_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';

class PaginationScreen extends StatefulWidget {
  const PaginationScreen({super.key});

  @override
  State<PaginationScreen> createState() => _PaginationScreenState();
}

class _PaginationScreenState extends State<PaginationScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    BlocProvider.of<PaginationCubit>(context).fetchItems();
    _scrollController.addListener(() async {
      if (_scrollController.position.maxScrollExtent ==
          _scrollController.offset) {
            print("===== Scroll Reached to Bottom =====");
        await BlocProvider.of<PaginationCubit>(context).onScrollingEvent();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagination Witl Cubit"),
      ),
      body: BlocBuilder<PaginationCubit, PaginationState>(
        builder: (context, state) {
          if (state is PaginationLoading) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          } else if (state is PaginationLoaded) {
            return ListView.builder(
              shrinkWrap: true,
              controller: _scrollController,
              itemCount: state.items.length + 1,
              itemBuilder: (_, index) {
                if (index < state.items.length) {
                
                // Get Product From Valid Range of Index //
                final prodcutItem = state.items[index];

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      elevation: 3,
                      color: Colors.teal[100],
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(prodcutItem.name),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              prodcutItem.createdAt.toString(),
                              maxLines: 3,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                } else {
                  return state.hasReachedMax == true
                      ? Container(
                        height: 100,
                        alignment: Alignment.center,
                        color: Colors.red[100],
                        child: Text("No Data Left"))
                      : Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircularProgressIndicator(),
                          ),
                      );
                }
              },
            );
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
