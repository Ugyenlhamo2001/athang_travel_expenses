import 'package:flutter/material.dart';
import 'package:travel_expenses/base/style/text_style.dart';
import 'package:travel_expenses/data/model/account/account_model.dart';
import 'package:travel_expenses/data/model/account/account_repo.dart';

import 'package:travel_expenses/widgets/account_cart.dart';

class Accounthome extends StatefulWidget {
  const Accounthome({super.key});

  @override
  State<Accounthome> createState() => _SummaryAccountsState();
}

class _SummaryAccountsState extends State<Accounthome> {
  List<AccountModel> accounts = [];

  @override
  void initState() {
    loadData();
  }

  Future loadData() async {
    final res = await AccountRepo().loadAccounts();
    setState(() {
      accounts = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      margin: EdgeInsets.only(bottom: 16, top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Current balances',
              style: TypoStyles().kSectionHeader,
            ),
          ),
          Container(
            height: 150,
            margin: EdgeInsets.only(bottom: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: accounts
                    .map(
                      (val) => AccountCard(val),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
