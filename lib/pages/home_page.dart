import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  final int myAge = 26;
  final String myName = 'Dheeraj Jaiswal';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile  Market'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModal.items.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemWidget(
              item: CatalogModal.items[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
