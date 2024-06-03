import 'dart:convert';
import 'package:travel_expenses/domain/landing/summary_model.dart';
import 'package:travel_expenses/plugins/http.dart';

Future<SummaryData> loadSummaryData() async {
  final res = await GetRequest('summary');
  print(jsonDecode(res.body));
  final temp = jsonDecode(res.body)['data'];
  return SummaryData(
    expenses: temp['expenses'],
    income: temp['income'],
    openingBalance: temp['openingBalance'],
    maxExpense: temp['maxExpense'],
    totalTransactionsThisMonth: temp['totalTransactionsThisMonth'],
  );
}

// 1. load data in homescreen
// pass the data to components

// 2. load data in providers
// trigger load data function in homescreen
// display through components

// 3. load data in the respective components