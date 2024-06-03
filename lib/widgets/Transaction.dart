import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> transactions = [
    {
      "icon": Icons.people,
      "title": "Family Dinner",
      "date": '17th Jan, 2024',
      "amount": 'Nu.500'
    },
    {
      "icon": Icons.shopping_cart,
      "title": "Grocery Shopping",
      "date": '20th Jan, 2024',
      "amount": 'Nu. 2500'
    },
    {
      "icon": Icons.local_pizza,
      "title": "Lunch with Friends",
      "date": '22nd Jan, 2024',
      "amount": 'Nu. 1500'
    },
    {
      "icon": Icons.airplanemode_active,
      "title": "Flight Ticket",
      "date": '25th Jan, 2024',
      "amount": 'Nu. 10000'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(67.0),
        child: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text(
            'Transactions',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 30),
          ...transactions
              .map(
                (e) => _buildTransactionRow(
                    e["icon"], e["title"], e["date"], e["amount"]),
              )
              .toList()
        ],
      ),
    );
  }

  Widget _buildTransactionRow(
      IconData icon, String title, String date, String amount) {
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
          Text(
            amount,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
