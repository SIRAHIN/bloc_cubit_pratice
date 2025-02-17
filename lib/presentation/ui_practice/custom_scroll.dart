import 'package:flutter/material.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({super.key});

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  
  double _currentSheetPosition = 0.2; // Initial position of the bottom sheet
  ValueNotifier<bool> scrolledMaxTop = ValueNotifier(false);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Upper Container
            ValueListenableBuilder(
              valueListenable: scrolledMaxTop,
              builder: (context, value, child) {
                return !value ? Container(
                  height: 300,
                  width: 400,
                  color: Colors.red,
                ) : Container();
              },
            ),

          // DraggableScrollableSheet
          DraggableScrollableSheet(
            initialChildSize: _currentSheetPosition, // Initial height
            minChildSize: 0.2, // Minimum height
            maxChildSize: 1.0, // Maximum height
            builder: (context, scrollController) {
              return NotificationListener<DraggableScrollableNotification>(
                onNotification: (notification) {
                  
                  // Update the current position of the sheet
                  _currentSheetPosition = notification.extent;
                  
                  // Update the visibility of the top widget based on the sheet position
                  scrolledMaxTop.value = _currentSheetPosition >= 0.7;
              
                  return true;
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: ListView(
                    controller: scrollController,
                    children: [
                      const SizedBox(height: 16),
                      Center(
                        child: Container(
                          width: 40,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "Bottom Sheet Content",
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      for (int i = 0; i < 20; i++) ...[
                        ListTile(
                          title: Text("Item $i"),
                        ),
                      ],
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
