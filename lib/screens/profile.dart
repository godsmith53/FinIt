import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newapp/constants/app_colors.dart';
import 'package:newapp/models/spending_category_model.dart';
import 'package:newapp/widgets/price_text.dart';
import 'package:newapp/widgets/spending_category.dart';

class ProfileScreen extends StatelessWidget {
  static const categoryModels = [
    SpendingCategoryModel(
      'FOOD',
      'assets/icons/profile/image1.png',
      2300.00,
      AppColors.categoryColor1,
    ),
    SpendingCategoryModel(
      'STOCKS',
      'assets/icons/profile/image2.png',
      52050.90,
      AppColors.categoryColor2,
    ),
    SpendingCategoryModel(
      'MUTUAL FUND',
      'assets/icons/profile/image3.png',
      5200.00,
      AppColors.categoryColor3,
    ),
  ];

  const ProfileScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 180,
              child: Stack(children: [
                Container(
                  color: const Color(0xFFCADCF8),
                  height: 150,
                  padding: const EdgeInsets.only(left: 36, top: 12),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome back,',
                          style: Theme.of(context).textTheme.headline2),
                      Text('Investor!',
                          style: Theme.of(context).textTheme.headline1),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16),
                          decoration: BoxDecoration(
                              color: AppColors.secondaryAccent,
                              borderRadius: BorderRadius.circular(32)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'Spending\nthis month',
                                style: TextStyle(
                                    color: AppColors.primaryWhiteColor),
                              ),
                              SizedBox(width: 32),
                              PriceText(
                                price: 59550.9,
                                color: AppColors.primaryWhiteColor,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              color: AppColors.secondaryAccent),
                          // Wrap the IconButton in a Material widget for the
                          // IconButton's splash to render above the container.
                          child: Material(
                            borderRadius: BorderRadius.circular(32),
                            type: MaterialType.transparency,
                            // Hard Edge makes sure the splash is clipped at the border of this
                            // Material widget, which is circular due to the radius above.
                            clipBehavior: Clip.hardEdge,
                            child: IconButton(
                              padding: const EdgeInsets.all(16),
                              color: AppColors.primaryWhiteColor,
                              iconSize: 32,
                              icon: const Icon(
                                Icons.calendar_today,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                      ]),
                )
              ]),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 24),
              child: SizedBox(
                height: 48,
                child: CupertinoSearchTextField(
                  borderRadius: BorderRadius.circular(16),
                  placeholder: 'Search your spending',
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  for (var model in categoryModels)
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 36.0, vertical: 16),
                      child: SpendingCategory(model),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
