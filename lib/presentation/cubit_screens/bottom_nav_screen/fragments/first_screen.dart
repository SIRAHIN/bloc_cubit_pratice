import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Drawer(
            backgroundColor: Colors.white,
            child: Icon(Icons.menu),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Welcom"), Text("Shehanul Islam Rahin")],
                ),
                SizedBox(
                  width: 8,
                ),
                CircleAvatar(
                  child: Text("S"),
                )
              ],
            ),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 2));
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Refresh Complete'),
              content: const Text('The screen has been refreshed.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('OK'),
                ),
              ],
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .spaceAround, // ensures pull-to-refresh works even if content is small
            children: [
              Container(
                height: 550,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.green,
                        blurRadius: 5,
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        // Time Clock //
                        Text(
                          "5:12:59 PM",
                          style: TextStyle(fontSize: 24),
                        ),
                        // Current Day and Date//
                        Text("Tuesday, September 16"),

                        SizedBox(
                          height: 10,
                        ),
                        // Tap To Check in Text//
                        Text("Tap to Check in"),
                      ],
                    ),

                    // Check in Check out Button Section
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 90,
                              width: 130,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade50,
                                  borderRadius: BorderRadius.circular(18),
                                  shape: BoxShape.rectangle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.green.shade100,
                                        blurRadius: 2)
                                  ]),
                            ),
                            Container(
                              height: 85,
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade100,
                                  borderRadius: BorderRadius.circular(22),
                                  shape: BoxShape.rectangle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.green.shade200,
                                        blurRadius: 2)
                                  ]),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 80,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: Colors.green.shade500,
                                  borderRadius: BorderRadius.circular(25),
                                  shape: BoxShape.rectangle,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.green.shade700,
                                        blurRadius: 2)
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.fingerprint,
                                    color: Colors.white,
                                    size: 45,
                                  ),
                                  Text(
                                    "Check In",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    // Current Location Section //
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.location_pin,
                            color: Colors.green,
                            size: 35,
                          ),
                          Container(
                              alignment: Alignment.center,
                              color: Colors.white,
                              width: 250,
                              height: 40,
                              child: Text(
                                "Barikoi Hqsdfafsfsfsfsfsfsfsfsdfsfsfsdfdfsdfsdfsdfsdfsdfsdfsdfsdsdsdssdsdfsdfsdfsdsdfsdfd",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              )),
                          Container(
                            height: 40,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(
                              Icons.replay_circle_filled_rounded,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    // Check in Check out time //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            // check in time
                            Column(
                              children: [
                                Icon(
                                  Icons.av_timer_rounded,
                                  size: 35,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text("--|--"),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Check in",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.green,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
                        ),

                        Container(
                          height: 50,
                          width: 2,
                          color: Colors.grey,
                        ),

                        // check out time
                        Column(
                          children: [
                            Icon(
                              Icons.av_timer_rounded,
                              size: 35,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("--|--"),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Check Out",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // Tag Loction Button //
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                        backgroundColor: WidgetStatePropertyAll(Colors.green)),
                    onPressed: () {},
                    child: Text(
                      "Tag location",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
