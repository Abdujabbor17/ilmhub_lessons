import 'package:birinchi_proyekt/shop_ui/product_model.dart';
import 'package:flutter/material.dart';

Widget productItem(
    BuildContext context,
    List<Product> products,
    int index,
    void Function() like
    ) {
  return Card(
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Stack(
      children: [
        // Container(
        //   height: MediaQuery.of(context).size.height*0.33,
        //   width: double.infinity,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(20),
        //   ),
        //   child: Image.network(
        //     products[index].image,
        //     //'https://avatars.mds.yandex.net/i?id=778a4bb14d485f96b7dc8ba017bedb3f64dbe58f-7545599-images-thumbs&n=13',
        //   //fit: BoxFit.cover,
        //   ),
        // ),
        Container(
          height: MediaQuery.of(context).size.height*0.33,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(products[index].image,)
            )
              ),
          child: Container(
            padding:
            const EdgeInsets.only(left: 20, bottom: 20, top: 15, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.1),
                  ],
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          products[index].name,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          products[index].type,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    MaterialButton(
                      minWidth: 35,
                      height: 35,
                      padding: EdgeInsets.zero,
                      shape: const CircleBorder(),
                      onPressed: like,
                      child: !products[index].isLike
                          ? const Icon(Icons.favorite_border)
                          : const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                      color: Colors.white,
                    )
                  ],
                ),
                Text(
                  products[index].cost,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  );
}