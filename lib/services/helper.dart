import 'package:flutter/services.dart' as the_bundle;
import 'package:storage_app/models/product_model.dart';


class Helper {
    Future<List<Products>> getPeriferics() async {
        final data = await the_bundle.rootBundle.loadString('assets/json/products.json');

        final perifericsList = productsFromJson(data);

        return perifericsList;
    }
    Future<List<Products>> getComponents() async {
        final data = await the_bundle.rootBundle.loadString('assets/json/products.json');

        final componentsList = productsFromJson(data);

        return componentsList;
    }
    Future<List<Products>> getAccesories() async {
    final data = await the_bundle.rootBundle.loadString('assets/json/products.json');

    final accesoriesList = productsFromJson(data);

    return accesoriesList;
    }
}
