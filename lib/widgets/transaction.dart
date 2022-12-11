import 'package:newapp/constants/color_constant.dart';
import 'package:newapp/models/transaction_model.dart' as tm;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LastTransaction extends StatelessWidget {
  const LastTransaction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 16, right: 8),
        scrollDirection: Axis.horizontal,
        itemCount: tm.transactions.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 8),
            height: 190,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: kWhiteColor,
              boxShadow: const [
                BoxShadow(
                  color: Color(0x04000000),
                  blurRadius: 10,
                  spreadRadius: 10,
                  offset: Offset(0.0, 8.0),
                )
              ],
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 16,
                  left: 16,
                  height: 24,
                  width: 24,
                  child: SvgPicture.asset(tm.transactions[index].type),
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: SvgPicture.asset('assets/svg/mastercard_bg.svg'),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: Text(
                    tm.transactions[index].name,
                    style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: tm.transactions[index].colorType),
                  ),
                ),
                Positioned(
                  top: 64,
                  left: 16,
                  child: Text(
                    '${tm.transactions[index].signType} ₹ ${tm.transactions[index].amount}',
                    style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: tm.transactions[index].colorType),
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 106,
                  child: Text(
                    tm.transactions[index].information,
                    style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: kTealColor),
                  ),
                ),
                Positioned(
                  left: 16,
                  bottom: 48,
                  child: Text(
                    tm.transactions[index].recipient,
                    style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: kBlackColor),
                  ),
                ),
                Positioned(
                  left: 16,
                  bottom: 22,
                  child: Text(
                    tm.transactions[index].date,
                    style: GoogleFonts.nunito(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: kTealColor),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
