// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/models/catalog.dart';
import 'package:flutter_tutorial/widgets/drawer.dart';
import 'package:flutter_tutorial/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (
            context,
            index,
          ) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
