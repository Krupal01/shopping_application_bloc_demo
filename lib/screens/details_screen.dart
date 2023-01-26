import 'package:flutter/material.dart';
import 'package:shopping_application_bloc_demo/widgets/app_bar.dart';
import 'package:shopping_application_bloc_demo/widgets/header_text.dart';

class DetailsScreen extends StatelessWidget {
  static const route = '/details_screen';
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        title: "Details",
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: Image(
                          image:
                              AssetImage("assets/images/clothes_default.jpeg"),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Text("Regular jeans pants" , style: TextStyle(fontSize: 25 , color: Colors.black,),),
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    "4.5/5",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    "(45 review)",
                    style: TextStyle(color: Colors.black38),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
