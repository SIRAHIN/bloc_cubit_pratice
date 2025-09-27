import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailsPage extends StatelessWidget {
  final int? productId;
  const DetailsPage({super.key, this.productId});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('The Data is : $productId'),
        
      ),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Go to Home Page'),
            ElevatedButton(
                onPressed: () {
                  context.go('/',);
                },
                child: Text('Press Here!'))
          ],
        ),
      ),
    );
  }
}
