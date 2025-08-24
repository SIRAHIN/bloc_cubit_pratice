import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController dateController = TextEditingController();

    @override
    void dispose() {
      dateController.dispose();
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'This is the Second Screen',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final DateTimeRange? result = await showDateRangePicker(
                  context: context,
                  initialDateRange: DateTimeRange(
                    start: DateTime.now(),
                    end: DateTime.now(),
                  ),
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2030),
                );
                if (result != null) {
                  dateController.text =
                      '${result.start.toLocal()} - ${result.end.toLocal()}';
                }
              },
              child: Text('Select Date Range'),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                readOnly: true,
                controller: dateController,
                decoration: InputDecoration(
                  labelText: 'Selected Date',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
