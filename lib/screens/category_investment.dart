import 'package:newapp/models/banking.dart';
import 'package:flutter/material.dart';

class CategoryStocks extends StatelessWidget {
  const CategoryStocks({
    Key? key,
    required this.category,
  }) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {
    final categoryStocks = category.toLowerCase();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: <Widget>[
            IconButton(
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_sharp,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Text(
                '$category Stocks',
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: banking.length,
        itemBuilder: (context, index) {
          return banking[index]['category'] == categoryStocks
              ? Column(
                  children: [
                    ListTile(
                      title: Text(
                        banking[index]['name']!,
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            '₹ ${banking[index]['Value']!}',
                          ),
                          const SizedBox(height: 5),
                          Text(
                            banking[index]['status']!,
                            style: TextStyle(
                              color: banking[index]['status']![0] == '-'
                                  ? Colors.red
                                  : Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    )
                  ],
                )
              : Container();
        },
      ),
    );
  }
}
