import 'package:newapp/models/fund_item.dart';
import 'package:flutter/material.dart';

class MutualFund extends StatelessWidget {
  const MutualFund({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Popular Funds',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green.shade100,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 5.0),
                  child: Text(
                    'All Mutual Funds',
                    style: TextStyle(color: Colors.green.shade900),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Funds(),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Collections',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Table(
          children: [
            TableRow(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/icons/mutual/highreturn.png',
                      height: 80,
                      width: 80,
                    ),
                    const Text('High Return'),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/icons/mutual/taxsaving.png',
                      height: 80,
                      width: 80,
                    ),
                    const Text('Tax Saving'),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/icons/mutual/better.png',
                      height: 80,
                      width: 80,
                    ),
                    const Text('Better Than FD'),
                  ],
                ),
              ],
            ),
            TableRow(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/icons/mutual/top.png',
                      height: 80,
                      width: 80,
                    ),
                    const Text('Top Companies'),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/icons/mutual/sip.png',
                      height: 80,
                      width: 80,
                    ),
                    const Text('Min SIP'),
                  ],
                ),
                Column(
                  children: [
                    Image.asset(
                      'assets/icons/mutual/sector.png',
                      height: 80,
                      width: 80,
                    ),
                    const Text('Sector Bets'),
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

class Funds extends StatelessWidget {
  const Funds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175,
      child: ListView(
        padding: const EdgeInsets.only(left: 16, right: 8),
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          FundItem(
            logo: 'assets/company/kotak.png',
            per: '36.48%',
            name: 'Kotak Small Cap Fund',
            plan: 'Direct Growth',
            equity: 'Equity Small Cap',
            returns: '3Y Returns',
          ),
          FundItem(
            logo: 'assets/company/icici.png',
            per: '44.1%',
            name: 'ICICI Prudential Technology',
            plan: 'Direct Plan Growth',
            equity: 'Equity Sectoral / Thematic',
            returns: '3Y Returns',
          ),
          FundItem(
            logo: 'assets/company/axis.png',
            per: '33.81%',
            name: 'Axis Small Cap Fund',
            plan: 'Direct Growth',
            equity: 'Equity Small Cap',
            returns: '3Y Returns',
          ),
        ],
      ),
    );
  }
}
