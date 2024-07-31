import 'package:flutter/material.dart';
import 'package:learn_api/controller/api_controller/product_list.dart';
import 'package:learn_api/models/productlist_model.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<Products> data = [];

  getData() async {
    data = await ProductListService.productListService();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffb3d1),
        appBar: AppBar(
          title: Text("ProductList Screen"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: GridView.builder(
            itemCount: data.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.6,
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (c, i) {
              return Card(
                color: Color(0xffffffb3),
                child: Column(
                  children: [
                    Container(
                      height: 210,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cit-ecommerce-codecanyon.bandhantrade.com/${data[i].image}"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name: ${data[i].nameEn}",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Price: ${data[i].regPrice}",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "Rating: ${data[i].rating}",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }));
  }
}
