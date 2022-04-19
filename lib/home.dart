import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_shoe_app/products.dart';
import 'package:practice_shoe_app/details.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_rounded, size: 30, color: Colors.black,)
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: 30, color: Colors.black,)
        ),
        SizedBox(width: 5,),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_rounded, size: 30, color: Colors.black,)
        ),
      ],
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
              "Men",
              style: Theme.of(context).textTheme.headline4?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.black
              )
          ),
        ),
        SizedBox(height: 15,),
        Categories(),
        SizedBox(height: 15,),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0
              ),
              itemBuilder: (context,i) =>
                  ItemCard(
                      product: products[i], press: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder:
                          (context) => DetailsScreen(product: products[i],)
                      )
                  )
                  ),
            ),
          ),
        ),
      ],
    );
  }
}

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ItemCard({
    Key? key,
    required this.product, required this.press,
    // required this.press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              // padding: EdgeInsets.all(25.0),
              height: 200,
              width: 175,
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  image: DecorationImage(
                      image: AssetImage(
                          product.image
                      )
                  )
              ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              product.title,
              style: TextStyle(
                  color: Colors.black
              ),
            ),
          ),
          Text(
              "\$${product.price}"
          )
        ],
      ),
    );
  }
}


class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  List<String> categories = ["Shoes", "Trousers", "Tshirts", "Caps"];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, i) =>
              buildCategory(i)
      ),
    );
  }

  Widget buildCategory(int i){
    return GestureDetector(
      onTap: (){
        setState(() {
          selected = i;

        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Text(
              categories[i],
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: selected == i ? Colors.black : Colors.black54

              ),
            ),
            Container(
                height: 2,
                width: 30,
                color: selected == i ? Colors.black : Colors.transparent
            ),
          ],
        ),
      ),
    );
  }
}

