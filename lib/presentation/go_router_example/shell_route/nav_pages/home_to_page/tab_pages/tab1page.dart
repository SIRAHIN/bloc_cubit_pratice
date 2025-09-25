import 'package:bloc_practice/dart_practice/call_back_function.dart';
import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/second_screen/bloc/bottom_sheet_bloc.dart';
import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/second_screen/cubit/second_screen_cubit.dart';
import 'package:bloc_practice/presentation/cubit_screens/bottom_nav_screen/fragments/second_screen/cubit/second_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Tab1page extends StatefulWidget {
  const Tab1page({super.key});

  @override
  State<Tab1page> createState() => _Tab1pageState();
}

class _Tab1pageState extends State<Tab1page> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final cubit = context.read<SecondScreenCubit>();

    // Only call API if data not loaded yet
    if (!cubit.state.isLoaded) {
      cubit.callApi();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          return context.read<SecondScreenCubit>().callApi();
        },
        child: SingleChildScrollView(
          // make it scrollable
          physics:
              const AlwaysScrollableScrollPhysics(), // allow scroll even if content is small
          child: SizedBox(
            height: MediaQuery.of(context).size.height, // fill screen
            width: double.infinity,
            child: BlocListener<BottomSheetBloc, BottomSheetState>(
              listener: (context, state) {
                // TODO: implement listener
                state.maybeWhen(
                    isClose: () {
                      Navigator.pop(context);
                    },
                    isOpen: () => showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.white.withOpacity(0),
                          isDismissible: false,
                          builder: (_) => DraggableScrollableSheet(
                            initialChildSize: 0.3,
                            minChildSize: 0.3,
                            maxChildSize: 0.9,
                            shouldCloseOnMinExtent: false,
                            builder: (context, scrollController) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(20),
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 10,
                                      spreadRadius: 2,
                                    ),
                                  ],
                                ),
                                padding: const EdgeInsets.all(16),
                                child: SingleChildScrollView(
                                  controller: scrollController,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: Container(
                                          width: 50,
                                          height: 5,
                                          margin:
                                              const EdgeInsets.only(bottom: 20),
                                          decoration: BoxDecoration(
                                            color: Colors.grey[400],
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Edit Profile",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          IconButton(
                                              onPressed: () {
                                                BlocProvider.of<
                                                            BottomSheetBloc>(
                                                        context)
                                                    .add(BottomSheetEvent
                                                        .closeBottomSheet());
                                              },
                                              icon: Icon(Icons.close))
                                        ],
                                      ),
                                      SizedBox(height: 20),
                                      // Image Picker Container (static design)
                                      Center(
                                        child: Container(
                                          width: 100,
                                          height: 100,
                                          decoration: BoxDecoration(
                                            color: Colors.grey[300],
                                            borderRadius:
                                                BorderRadius.circular(12),
                                          ),
                                          child: Icon(
                                            Icons.camera_alt,
                                            size: 40,
                                            color: Colors.grey[700],
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      // Text Fields (static)
                                      TextField(
                                        decoration: InputDecoration(
                                          labelText: "Full Name",
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      TextField(
                                        decoration: InputDecoration(
                                          labelText: "Email",
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      TextField(
                                        decoration: InputDecoration(
                                          labelText: "Phone",
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                      // Save Button (static)
                                      Center(
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              fixedSize: Size(150, 50),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          child: Text("Save"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                    orElse: () {});
              },
              child: BlocBuilder<SecondScreenCubit, SecondScreenState>(
                builder: (context, state) {
                  if (state.isLoaded) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text('This is Tab 1 Page'),
                            SizedBox(
                              height: 10,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  BlocProvider.of<BottomSheetBloc>(context)
                                      .add(BottomSheetEvent.opneBottomSheet());
                                },
                                child: Text("Open Bottom Sheet"))
                          ],
                        ),
                      ],
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
