import 'package:bloc_practice/presentation/hive_screen/const/hive_box_const.dart';
import 'package:bloc_practice/presentation/hive_screen/hive_model/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveMainScreen extends StatefulWidget {
  const HiveMainScreen({super.key});

  @override
  State<HiveMainScreen> createState() => _HiveMainScreenState();
}

class _HiveMainScreenState extends State<HiveMainScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  TextEditingController todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hive Main Screen'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.blue[100],
              child: Column(
                children: [
                  TextFormField(
                    controller: todoController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter Todo',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add todo to Hive box
                      final newTodo = TodoModel(
                          title: todoController.text, isCompleted: false);
                      HiveBoxConst.instance.todoBox.add(newTodo);
                      todoController.clear();
                    },
                    child: Text('Add Todo'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.grey[200],
              child: ValueListenableBuilder(
                  valueListenable: HiveBoxConst.instance.todoBox.listenable(),
                  builder: (context, Box<TodoModel> box, _) {
                    if (box.values.isEmpty) {
                      return Center(
                        child: Text('No Todos'),
                      );
                    } else {
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: box.values.length,
                        itemBuilder: (context, index) {
                          final todo = box.getAt(index);
                          return ListTile(
                            title: Text(todo?.title ?? 'No Title Found'),
                            trailing: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Checkbox(
                                  value: todo?.isCompleted ?? false,
                                  onChanged: (value) {
                                    // Update todo completion status
                                    if (todo != null) {
                                      final updatedTodo = TodoModel(
                                          title: todo.title,
                                          isCompleted: value ?? false);
                                      box.putAt(index, updatedTodo);
                                    }
                                  },
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                IconButton(
                                    onPressed: () => showUpdateDialoge(
                                        index: index,
                                        todoTitle: todo!.title,
                                        isCompleted: todo.isCompleted),
                                    icon: Icon(Icons.edit))
                              ],
                            ),
                            onLongPress: () {
                              // Delete todo from Hive box
                              box.deleteAt(index);
                            },
                          );
                        },
                      );
                    }
                  }),
            ),
          )
        ],
      ),
    );
  }

  Future<void> showUpdateDialoge({
    required int index,
    required bool isCompleted,
    required String todoTitle,
  }) {
    final updateController = TextEditingController(text: todoTitle);

    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Update Todo'),
        content: TextFormField(
          controller: updateController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Enter Todo',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              final updateTodo = TodoModel(
                title: updateController.text,
                isCompleted: isCompleted,
              );
              HiveBoxConst.instance.todoBox.putAt(index, updateTodo);
              Navigator.pop(context);

            },
            child: Text('Update'),
          ),
        ],
      ),
    );
  }
}
