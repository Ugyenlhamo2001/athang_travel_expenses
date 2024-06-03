import 'package:flutter/material.dart';
import 'package:travel_expenses/base/style/text_style.dart';
import 'package:travel_expenses/domain/landing/summary_model.dart';
import 'package:travel_expenses/domain/landing/summary_repo.dart';

class HomeSummary extends StatefulWidget {
  @override
  State<HomeSummary> createState() => _SummaryHomeState();
}

class _SummaryHomeState extends State<HomeSummary> {
  SummaryModel summary = SummaryModel();

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    SummaryModel res = await loadSummaryData();
    setState(() {
      summary = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Current Balance',
                style: TypoStyles().kPageHeader.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              ),
              Text(
                'Nu.' + summary.openingBalance.toString(),
                style: TypoStyles().kPageHeader.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          Container(
            width: 450,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.green,
                      size: 35,
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Income',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Rs.34,000',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.arrow_upward,
                      color: Colors.red,
                      size: 35,
                    ),
                    SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Expenses',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Rs.20,000',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
