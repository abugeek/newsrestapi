import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:newsrestapi/model/category.dart';
import 'package:newsrestapi/widgets/categoryCard.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'News App',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: 70,
        child: Column(
          children: [
            ListView.builder(
              itemBuilder: (context, index) => CategoryCard(
                CategoryModel.categoryData[index],
              ),
              itemCount: CategoryModel.categoryData.length,
              shrinkWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  CategoryTile(this.categoryName, this.imageUrl, {Key? key}) : super(key: key);
  final String categoryName, imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        CachedNetworkImage(
          imageUrl: imageUrl,
          height: 80,
          width: 150,
          fit: BoxFit.cover,
        ),
      ]),
    );
  }
}
