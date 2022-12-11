import 'package:flutter/material.dart';

final List<Map> articles = [
  {
    "title": "How to Start Investing in Stock Market",
    "author": "Nikhil Kumar",
    "time": "10 min read",
    "image":
        "https://hgtrades.com/wp-content/uploads/2020/10/10-Must-know-tips-for-every-stock-market-beginner.png",
  },
  {
    "title": "Managing your Finances with ease",
    "author": "Ankit Tiwari",
    "time": "4 min read",
    "image":
        "https://www.swiftsalary.com/wp-content/uploads/2018/06/personal-finance-tips-and-tricks-v2.png",
  },
  {
    "title": "Your 5 min guide to Mutual Fund",
    "author": "Abhimanyu",
    "time": "5 min read",
    "image":
        "https://img.etimg.com/thumb/msid-70638318,width-300,imgsize-198621,,resizemode-4,quality-100/mutual-fund-combination.jpg",
  },
  {
    "title": "How to Start Investing in Stock Market",
    "author": "Pranjal",
    "time": "10 min read",
    "image":
        "https://hgtrades.com/wp-content/uploads/2020/10/10-Must-know-tips-for-every-stock-market-beginner.png",
  },
  {
    "title": "Benefits of investing at an early stage",
    "author": "Venky",
    "time": "5 min read",
    "image":
        "https://www.mutualfunday.com/wp-content/uploads/2018/03/SavingInvestingEarlyToEnsureYourFuture-1.jpg",
  },
  {
    "title": "Managing your Finances with ease",
    "author": "Golcha",
    "time": "4 min read",
    "image":
        "https://www.swiftsalary.com/wp-content/uploads/2018/06/personal-finance-tips-and-tricks-v2.png",
  },
  {
    "title": "Your 5 min guide to Mutual Fund",
    "author": "Aditi Rai",
    "time": "5 min read",
    "image":
        "https://img.etimg.com/thumb/msid-70638318,width-300,imgsize-198621,,resizemode-4,quality-100/mutual-fund-combination.jpg",
  },
];

class Learning extends StatelessWidget {
  const Learning({Key? key}) : super(key: key);

  final Color primaryColor = const Color(0xffFD6592);
  final Color bgColor = const Color(0xffF9E0E3);
  final Color secondaryColor = const Color(0xff324558);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          'Learning',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          Map article = articles[index];
          return Container(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Container(
                  width: 90,
                  height: 90,
                  color: bgColor,
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(12.0),
                  margin: const EdgeInsets.all(12.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 100,
                        color: Colors.transparent,
                        width: 80.0,
                        child: Image.network(
                          article["image"],
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Text(
                              article["title"],
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: secondaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundColor: primaryColor,
                                    ),
                                  ),
                                  const WidgetSpan(
                                    child: SizedBox(width: 5.0),
                                  ),
                                  TextSpan(
                                      text: article["author"],
                                      style: const TextStyle(fontSize: 16.0)),
                                  const WidgetSpan(
                                    child: SizedBox(width: 20.0),
                                  ),
                                  const WidgetSpan(
                                    child: SizedBox(width: 5.0),
                                  ),
                                  TextSpan(
                                    text: article["time"],
                                  ),
                                ],
                              ),
                              style: const TextStyle(height: 2.0),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
