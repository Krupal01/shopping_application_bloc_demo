import 'package:flutter/material.dart';
import 'package:shopping_application_bloc_demo/widgets/spacer.dart';

class ShoppingItem extends StatefulWidget {
  final double? height, width;
  final String imageUrl;
  final String? title, discription, price;
  bool? isFavorite;
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
  State<ShoppingItem> createState() => _ShoppingItemState();
}

class _ShoppingItemState extends State<ShoppingItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onItemTap!();
      },
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shadowColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  const SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: Image(
                      image: AssetImage("assets/images/clothes_default.jpeg"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        widget.isFavorite = !(widget.isFavorite ?? false);
                      });
                      widget.onFavoriteTap!();
                    },
                    icon: (widget.isFavorite ?? false)
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_border,
                          ),
                  ),
                ],
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
                      widget.title ?? "defual title",
                      style: const TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                      maxLines: 2,
                    ),
                    Space(height: 5),
                    Expanded(
                      child: Text(
                        widget.discription ?? "defual discription",
                        style: const TextStyle(
                          fontSize: 10,
                          color: Colors.black38,
                        ),
                        maxLines: 3,
                      ),
                    ),
                    Space(height: 5),
                    Text(
                      widget.price ?? "150",
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
      ),
    );
  }
}
