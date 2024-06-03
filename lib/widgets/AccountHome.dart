import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountHome extends StatelessWidget {
  const AccountHome({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Current Balances',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  margin: EdgeInsets.only(right: 8.0),
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'NIBL',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Rs. 43,000',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Rs. 2,000 this month',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  margin: EdgeInsets.only(right: 8.0),
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'eSewa',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Rs. 17,000',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Rs. 3,200 this month',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  margin: EdgeInsets.only(right: 8.0),
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'eSewa',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Rs. 17,000',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Rs. 3,200 this month',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
