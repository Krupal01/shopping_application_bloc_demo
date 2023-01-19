
import 'package:flutter/material.dart';
import 'package:shopping_application_bloc_demo/widgets/spacer.dart';

class ShoppingItem extends StatelessWidget {
  final double? height, width;
  final String imageUrl;
  final String? title, discription, price;
  final bool? isFavorite;
  final Function? onFavoriteTap;
  final Function? onItemTap;
  final Function? onAddToCart;

  ShoppingItem({
    Key? key,
    this.height,
    this.width,
    required this.imageUrl,
    this.title,
    this.discription,
    this.price,
    this.isFavorite,
    this.onFavoriteTap,
    this.onItemTap,
    this.onAddToCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shadowColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          const Expanded(
            child: Image(
              image: AssetImage("assets/images/clothes_default.jpeg"),
              fit: BoxFit.fill,
            ),
            // child: FadeInImage.assetNetwork(
            //   placeholder: "assets/images/clothes_default.jpg",
            //   image: imageUrl,
            // ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  Text(
                    title ?? "defual title",
                    style: const TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    maxLines: 2,
                  ),
                  Space(height: 5),
                  Expanded(
                    child: Text(
                      discription ?? "defual discription",
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.black38,
                      ),
                      maxLines: 3,
                    ),
                  ),
                  Space(height: 5),
                  Text(
                    price ?? "150",
                    style: const TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
