// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:newapp/constants/color_constant.dart';

class CardModel {
  String name;
  String type;
  String balance;
  String valid;
  String moreIcon;
  String cardBackground;
  Color bgColor;
  Color firstColor;
  Color secondColor;

  CardModel(this.name, this.type, this.balance, this.valid, this.moreIcon,
      this.cardBackground, this.bgColor, this.firstColor, this.secondColor);
}

List<CardModel> cards = cardData
    .map(
      (item) => CardModel(
        item['name'].toString(),
        item['type'].toString(),
        item['balance'].toString(),
        item['valid'].toString(),
        item['moreIcon'].toString(),
        item['cardBackground'].toString(),
        item['bgColor'].toString() == 'kMasterCardColor'
            ? kMasterCardColor
            : kJeniusCardColor,
        item['firstColor'].toString() == 'kGreyColor'
            ? kTealColor
            : kWhiteColor,
        item['secondColor'].toString() == 'kBlackColor'
            ? kBlackColor
            : kWhiteColor,
      ),
    )
    .toList();

var cardData = [
  {
    "name": "Banking",
    "type": "assets/images/mastercard_logo.png",
    "balance": "6,352.251",
    "valid": "4500.00",
    "moreIcon": 'assets/icons/more_icon_grey.svg',
    "cardBackground": 'assets/icons/mastercard_bg.svg',
    "bgColor": 'kMasterCardColor',
    "firstColor": 'kGreyColor',
    "secondColor": 'kBlackColor'
  },
  {
    "name": "Aviation",
    "type": "assets/images/jenius_logo.png",
    "balance": "20,528.337",
    "valid": "25,990.32",
    "moreIcon": 'assets/icons/more_icon_white.svg',
    "cardBackground": 'assets/svg/jenius_bg.svg',
    "bgColor": 'kJeniusCardColor',
    "firstColor": 'kWhiteColor',
    "secondColor": 'kWhiteColor'
  },
  {
    "name": "Telecom",
    "type": "assets/images/telecom.png",
    "balance": "6,352.251",
    "valid": "7,000.98",
    "moreIcon": 'assets/icons/more_icon_grey.svg',
    "cardBackground": 'assets/svg/mastercard_bg.svg',
    "bgColor": 'kMasterCardColor',
    "firstColor": 'kGreyColor',
    "secondColor": 'kBlackColor'
  },
  {
    "name": "IT Sector",
    "type": "assets/images/it.png",
    "balance": "20,528.337",
    "valid": "18,434.439",
    "moreIcon": 'assets/icons/more_icon_white.svg',
    "cardBackground": 'assets/svg/jenius_bg.svg',
    "bgColor": 'kJeniusCardColor',
    "firstColor": 'kWhiteColor',
    "secondColor": 'kWhiteColor'
  }
];
