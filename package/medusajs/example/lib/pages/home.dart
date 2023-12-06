import 'package:example/config.dart';
import 'package:flutter/material.dart';
import 'package:medusajs/medusajs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: FutureBuilder(
        future: Medusa.create(baseUrl: medusaBaseURL).storeProductsGet(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          if (snapshot.hasData) {
            final products = snapshot.data!.body!.products;
            return ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.network(products[index].thumbnail!),
                  title: Text(products[index].title),
                  trailing: Text(
                      'THB ${products[index].variants!.first.prices!.first.amount / 100}'),
                );
              },
            );
          }

          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
