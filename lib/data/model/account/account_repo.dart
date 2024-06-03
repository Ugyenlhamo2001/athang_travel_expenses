import 'dart:convert';
import 'package:travel_expenses/data/model/account/account_model.dart';
import 'package:travel_expenses/plugins/http.dart';

class AccountRepo {
  Future loadAccounts() async {
    final res = await GetRequest('account');
    print(jsonDecode(res.body));
    List<AccountModel> tempAccounts = [];
    for (final acc in jsonDecode(res.body)['data']) {
      tempAccounts.add(AccountModel.fromJson(acc));
    }
    return tempAccounts;
  }
}
