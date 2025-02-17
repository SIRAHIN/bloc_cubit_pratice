import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollingForwardReverse extends StatefulWidget {
  const ScrollingForwardReverse({super.key});

  @override
  State<ScrollingForwardReverse> createState() =>
      _ScrollingForwardReverseState();
}

class _ScrollingForwardReverseState extends State<ScrollingForwardReverse> {
  final ScrollController _scrollController = ScrollController();
  ValueNotifier<bool> _isFabShow = ValueNotifier(true);
  Timer? _scrollTimer;

  @override
  void initState() {
    // Cancel the previous timer (if any)
    _scrollTimer?.cancel();

    // Add a listener to the scroll controller //
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
              ScrollDirection.forward ||
          _scrollController.position.userScrollDirection ==
              ScrollDirection.reverse ||
          _scrollController.position.userScrollDirection ==
              ScrollDirection.idle) {
        _isFabShow.value = false;
      }

      // Schedule a new timer to show the FAB after a delay
      _scrollTimer = Timer(const Duration(milliseconds: 200), () {
        _isFabShow.value = true;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _scrollController.dispose();
    _scrollTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('Scrolling Forward Reverse'),
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: 100,
              itemBuilder: (context, index) => Text('Item $index'),
            ),
          ),
        ],
      ),
      floatingActionButton: ValueListenableBuilder(
        valueListenable: _isFabShow,
        builder: (context, value, child) {
          return value
              ? FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {},
                )
              : SizedBox();
        },
      ),
    );
  }
}
