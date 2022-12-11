import 'package:flutter/material.dart';
import 'package:newapp/constants/app_colors.dart';

class PriceText extends StatelessWidget {
  const PriceText({
    Key? key,
    required this.price,
    this.color = AppColors.secondaryAccent,
  }) : super(key: key);

  final double price;
  final Color color;

  @override
  Widget build(BuildContext context) {
    var colorToUse = color;

    return Row(
      children: [
        Text(
          '₹ $price',
          style: Theme.of(context)
              .textTheme
              .headline3!
              .copyWith(color: colorToUse),
        ),
      ],
    );
  }
}
