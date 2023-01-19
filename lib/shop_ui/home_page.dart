import 'package:birinchi_proyekt/shop_ui/product_model.dart';
import 'package:flutter/material.dart';

import 'item_product.dart';
import 'like_page.dart';

class HomePage3 extends StatefulWidget {

  const HomePage3({Key? key}) : super(key: key);

  @override
  _HomePage3State createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  int _selectedIndex = 0;
  List<String> categories = ["All", "Red", "Blue", "Green", "Grey", "Yellow"];
  List<Product> products = [
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car0.jpg",
        category: "Red"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car1.jpg",
        category: "Blue"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car2.jpg",
        category: "Yellow"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car3.jpg",
        category: "Grey"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car4.jpg",
        category: "Green"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car5.jpg",
        category: "Red"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car6.jpg",
        category: "Red"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car7.jpg",
        category: "Red"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car8.jpg",
        category: "Blue"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car9.jpg",
        category: "Blue"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car10.jpg",
        category: "Blue"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car11.jpg",
        category: "Yellow"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car12.jpg",
        category: "Yellow"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car13.jpg",
        category: "Yellow"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car14.jpg",
        category: "Grey"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car15.jpg",
        category: "Grey"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car16.jpg",
        category: "Grey"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car17.jpg",
        category: "Green"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car18.jpg",
        category: "Green"),
    Product(
        name: "Car",
        type: "Electric",
        cost: "100\$",
        image: "assets/images/im_car19.jpg",
        category: "Green"),
  ];
  int likedItems = 0;
  List<Product> sortedProducts = [];
  
  @override
  void initState() {
    super.initState();
    setState(() {
      sortedProducts = products;
    });
  }
  
  void _openLikePage() async {
    var result = await Navigator.of(context).push(
      MaterialPageRoute (
      builder: (BuildContext context) => LikePage(
        likedItems: products.where((element) => element.isLike).toList(),),
    ),) as List;
    setState(() {
      likedItems = result.length;
    });
    for (int i = 0; i < products.length; i++) {
      if (!result.contains(products[i])) {
        setState(() {
          products[i].isLike = false;
          sortedProducts[i].isLike = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Cars",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                color: Colors.black,
              )),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;
                    products = sortedProducts;
                  });
                  _openLikePage();
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),
              Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.red),
                  margin: const EdgeInsets.only(bottom: 25, left: 15),
                  alignment: Alignment.center,
                  child: Text(
                    likedItems.toString(),
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ))
            ],
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // #categories
            SizedBox(
              height: 40,
              child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return _categories(index);
                  }),
            ),

            // #products
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return productItem(
                      context,
                      products,
                      index,
                        () {
                      setState(() {
                        products[index].isLike = !products[index].isLike;
                        if (products[index].isLike) {
                          likedItems++;
                        } else {
                          likedItems--;
                        }
                      });
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }



  Container _categories(int index) {
    return Container(
      padding: index != categories.length - 1
          ? const EdgeInsets.only(left: 10)
          : const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: MaterialButton(
        elevation: 0,
        color: (_selectedIndex != index) ? Colors.white : Colors.grey.shade300,
        shape: const StadiumBorder(),
        onPressed: () {
          setState(() {
            _selectedIndex = index;
            products = sortedProducts
                .where((element) => categories[index] == element.category)
                .toList();
            if (index == 0) {
              products = sortedProducts;
            }
          });
        },
        child: Text(
          categories[index],
          style: const TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
