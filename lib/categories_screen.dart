import 'package:flutter/material.dart';
import './widgets/dummy_data.dart';
import './widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daily Meal'),
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Icon(
            Icons.menu, // add custom icons also
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: GridView(
          padding: EdgeInsets.all(25),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          children: DUMMY_CATEGORIES
              .map(
                (catData) => CategoryItem(
                  catData.title,
                  catData.color,
                  catData.id,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
