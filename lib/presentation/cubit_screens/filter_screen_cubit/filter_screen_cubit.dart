import 'package:bloc_practice/data/cubit/filter_cubit/filter_cubit.dart';
import 'package:bloc_practice/data/cubit/filter_cubit/filter_cubit_state.dart';
import 'package:bloc_practice/data/grocery_data.dart';
import 'package:bloc_practice/data/models/grocery_model/grocery_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterScreenCubit extends StatelessWidget {
   FilterScreenCubit({super.key});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter Search"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<FilterCubit, FilterCubitState>(
          builder: (context, state) {
            return Column(
              children: [
                TextField(
                  controller: searchController,
                  onChanged: (value) => context.read<FilterCubit>().FilterItem(value),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Colors.teal))),
                ),
                if (state is FilterInitial)
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.initalData.length,
                      itemBuilder: (context, index) {
                        final data = state.initalData[index];
                        return Card(
                          margin: EdgeInsets.all(8),
                          color: Colors.teal,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(data.name),
                          ),
                        );
                      },
                    ),
                  )
                else if (state is FilterListed)
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.filters.length,
                      itemBuilder: (context, index) {
                        final data = state.filters[index];
                        return Card(
                          margin: EdgeInsets.all(8),
                          color: Colors.teal,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(data.name),
                          ),
                        );
                      },
                    ),
                  )
                else if (state is FilterNotFound)
                  Text(state.message)
              ],
            );
          },
        ),
      ),
    );
  }
}
