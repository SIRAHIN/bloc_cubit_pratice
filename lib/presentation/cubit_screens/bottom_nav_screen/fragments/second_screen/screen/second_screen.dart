import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/second_screen/cubit/second_screen_cubit.dart';
import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/second_screen/cubit/second_screen_state.dart';
import 'package:bloc_practice/presentation/go_router_example/shell_route/nav_pages/home_to_page/tab_pages/tab1page.dart';
import 'package:bloc_practice/presentation/go_router_example/shell_route/nav_pages/home_to_page/tab_pages/tab2page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Tab Example"),
      ),
      body: BlocBuilder<SecondScreenCubit, SecondScreenState>(
        builder: (context, state) {
          return Column(
            children: [
              // 🔸 Custom Tabs (you can style however you want)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _CustomTabButton(
                    label: "Tab 1",
                    isSelected: state.index == 0,
                    onTap: () => context
                        .read<SecondScreenCubit>()
                        .changeTabIndex(value: 0,),
                  ),
                  _CustomTabButton(
                    label: "Tab 2",
                    isSelected: state.index == 1,
                    onTap: () => context
                        .read<SecondScreenCubit>()
                        .changeTabIndex(value: 1),
                  ),
                ],
              ),

              const Divider(height: 1),

              // 🔸 The active page
              Expanded(child: state.index == 0 ? Tab1page() : Tab2page()),
            ],
          );
        },
      ),
    );
  }
}

class _CustomTabButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _CustomTabButton({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelected ? Colors.teal : Colors.transparent,
              width: 2,
            ),
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.teal : Colors.grey,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
