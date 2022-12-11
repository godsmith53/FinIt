import 'package:flutter/material.dart';
import 'package:newapp/constants/color_constant.dart';
import 'package:newapp/models/wallet_model.dart';

class TransactionModel {
  String name;
  String type;
  Color colorType;
  String signType;
  String amount;
  String information;
  String recipient;
  String date;
  String card;

  TransactionModel(this.name, this.type, this.colorType, this.signType,
      this.amount, this.information, this.recipient, this.date, this.card);
}

List<TransactionModel> transactions = transactionData
    .map(
      (item) => TransactionModel(
        item['name'].toString(),
        item['type'].toString(),
        item['colorType'] == 'kOrangeColor' ? kOrangeColor : kGreenColor,
        item['signType'].toString(),
        item['amount'].toString(),
        item['information'].toString(),
        item['recipient'].toString(),
        item['date'].toString(),
        item['card'].toString(),
      ),
    )
    .toList();

List<WalletModel> wallets = walletData
    .map((item) => WalletModel(item['name']!, item['wallet']!,
        item['walletLogo']!, item['walletNumber']!))
    .toList();

var transactionData = [
  {
    "name": "Buyed",
    "type": 'assets/icons/outcome_icon.svg',
    "colorType": 'kOrangeColor',
    "signType": "-",
    "amount": "200.000",
    "information": "Transfer to",
    "recipient": "Aviation",
    "date": "12 Feb 2020",
    "card": "assets/images/mastercard_logo.png"
  },
  {
    "name": "Sold",
    "type": 'assets/icons/income_icon.svg',
    "colorType": 'kGreenColor',
    "signType": "+",
    "amount": "352.000",
    "information": "Received from",
    "recipient": "Banking",
    "date": "10 Feb 2020",
    "card": "assets/images/jenius_logo_blue.png"
  },
  {
    "name": "Buyed",
    "type": 'assets/icons/outcome_icon.svg',
    "colorType": 'kOrangeColor',
    "signType": "-",
    "amount": "53.265",
    "information": "Monthly Payment",
    "recipient": "Transport",
    "date": "09 Feb 2020",
    "card": "assets/images/mastercard_logo.png"
  }
];
