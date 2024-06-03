import 'package:flutter/material.dart';

class UpdateCurrentBalance extends StatelessWidget {
  final List<Map<String, dynamic>> update = [
    {
      "icon": Icons.local_florist,
      "title": "Family Dinner",
      "date": '17th Jan, 2024',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75.0),
        child: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text(
            'Account',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 30),
          ...update
              .map(
                (e) => _buildupdatRow(e["icon"], e["title"], e["date"]),
              )
              .toList()
        ],
      ),
    );
  }

  Widget _buildupdatRow(IconData icon, String title, String date) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.red),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.edit, color: Colors.blue),
            onPressed: () {
              // Handle edit icon press
            },
          ),
          IconButton(
            icon: Icon(Icons.delete, color: Colors.red),
            onPressed: () {
              // Handle delete icon press
            },
          ),
        ],
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: UpdateCurrentBalance(),
//   ));
// }
