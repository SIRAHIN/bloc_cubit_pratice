import 'package:bloc_practice/data/bloc/grocery_bloc/grocery_bloc.dart';
import 'package:bloc_practice/data/bloc/grocery_bloc/grocery_event.dart';
import 'package:bloc_practice/data/bloc/grocery_bloc/grocery_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroceryBlocScreen extends StatefulWidget {
  const GroceryBlocScreen({super.key});

  @override
  State<GroceryBlocScreen> createState() => _GroceryBlocScreenState();
}

class _GroceryBlocScreenState extends State<GroceryBlocScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<GroceryBloc>().add(LoadGroceryEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grocery Bloc Screen'),
        actions: [
          Stack(
            children: [
              Icon(
                Icons.shopping_cart,
                // size: 20,
              ),
              BlocBuilder<GroceryBloc, GroceryState>(builder: (context, state) {
                if (state.itemswithList.isEmpty) {
                  return SizedBox();
                } else {
                  return Positioned(
                    right: 5,
                    child: CircleAvatar(
                      radius: 8,
                      backgroundColor: Colors.red,
                      child: Text(
                        state.itemswithList.length.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  );
                }
              }),
            ],
          )
        ],
      ),
      body: BlocBuilder<GroceryBloc, GroceryState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: state.items.length,
            itemBuilder: (context, index) {
              var item = state.items[index];
              return ListTile(
                title: Text(item.name),
                subtitle: Text('\$${item.price.toStringAsFixed(2)}'),
                trailing: IconButton(
                  icon: Icon(Icons.add_shopping_cart),
                  onPressed: () {
                    if (state.itemswithList.contains(item)) {
                      context
                          .read<GroceryBloc>()
                          .add(RemoveGroceryItemEvent([item]));
                    } else {
                      context
                          .read<GroceryBloc>()
                          .add(AddGroceryItemEvent([item]));
                    }
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
