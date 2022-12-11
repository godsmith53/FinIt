import 'package:newapp/constants/color_constant.dart';
import 'package:newapp/models/loss.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopLossers extends StatelessWidget {
  const TopLossers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 16, right: 8),
        scrollDirection: Axis.horizontal,
        itemCount: loss.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 8),
            height: 175,
            width: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: kBackgroundColor,
              boxShadow: const [
                BoxShadow(
                  color: Color(0x10000000),
                  blurRadius: 10,
                  spreadRadius: 4,
                  offset: Offset(0.0, 8.0),
                )
              ],
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 16,
                  top: 12,
                  child: Image.asset(
                    loss[index]['image'].toString(),
                    height: 22,
                    width: 33,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 45,
                  child: Text(
                    loss[index]['name'].toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 14,
                  right: 12,
                  child: Text(
                    loss[index]['category'].toString(),
                    style: GoogleFonts.nunito(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 100,
                  child: Text(
                    '₹ ${loss[index]['value']}',
                    style: GoogleFonts.nunito(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                ),
                Positioned(
                  left: 16,
                  bottom: 15,
                  child: Text(
                    '- ${loss[index]['loss']}',
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.red,
                    ),
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
