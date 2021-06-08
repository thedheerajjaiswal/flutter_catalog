import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  //Catalog Field
  late CatalogModel _catalog;

//Collection of IDs -store IDs of  each item
  final List<int> _itemIds = [];

//Get Catalog

  // ignore: unnecessary_getters_setters
  CatalogModel get catalog => _catalog;

  //Set catalog

  // ignore: unnecessary_getters_setters
  set catalog(CatalogModel newCatalog) {
    _catalog = newCatalog;
  }

//Get Items in the Cart
  List<Item> get items => _itemIds
      .map(
        (id) => _catalog.getById(id),
      )
      .toList();

  //Get Totoal Price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;
  AddMutation(this.item);

  @override
  perform() {
    store!.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;
  RemoveMutation(this.item);

  @override
  perform() {
    store!.cart._itemIds.remove(item.id);
  }
}
