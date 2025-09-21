import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeToRequestShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const HomeToRequestShell({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Tab Example"),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          // Navigate back to the previous screen
          context.go('/home');
        },  
      ),
      ),
      body: Column(
        children: [
          // 🔸 Custom Tabs (you can style however you want)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _CustomTabButton(
                label: "Tab 1",
                isSelected: navigationShell.currentIndex == 0,
                onTap: () => navigationShell.goBranch(0),
              ),
              _CustomTabButton(
                label: "Tab 2",
                isSelected: navigationShell.currentIndex == 1,
                onTap: () => navigationShell.goBranch(1),
              ),
            ],
          ),

          const Divider(height: 1),

          // 🔸 The active page
          Expanded(child: navigationShell),
        ],
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

