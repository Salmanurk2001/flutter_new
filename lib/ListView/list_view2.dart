import 'package:flutter/material.dart';

void main() {
  runApp(ListView2(),);
}

class ListView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Product_List(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Product_List extends StatelessWidget {
  var name = ['Apple','Mango','Banana','Grapes','Watermelon','Kiwi','Orange','Peach','Guava',];
  var unit = ['kg','Doz','Doz','Kg','Kg','Pc','Doz','Kg','Pc','Doz'];
  var price = ["\$8","\$25","\$30","\$15","\$10","\$50","\$25","\$14","\$26"];
  var images = ['https://pngimg.com/uploads/apple/apple_PNG12464.png',
    'https://pngimg.com/uploads/mango/mango_PNG9169.png',
    'https://pngimg.com/uploads/banana/banana_PNG814.png',
    'https://freepngimg.com/thumb/grape/5-2-grape-png.png',
    'https://pngimg.com/uploads/watermelon/watermelon_PNG234.png',
    'https://pngimg.com/uploads/kiwi/kiwi_PNG4030.png',
    'https://pngimg.com/uploads/orange/orange_PNG805.png',
    'https://pngimg.com/uploads/peach/peach_PNG4832.png',
    'https://pngimg.com/uploads/guava/guava_PNG10.png',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Product List'),),
          actions: [
            IconButton(
                icon : Icon(
                    Icons.shopping_cart
                ),
                onPressed: () {}),
          ],
        ),
        body: ListView.builder(
            itemCount: name.length,
            itemBuilder: (context, index){
              return
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Card(
                      color: Colors.grey,
                      child: ListTile(
                        leading:
                        AspectRatio(
                          aspectRatio: 4/3,
                          child: Image.network(images[index],
                            fit: BoxFit.fitHeight,),
                        ),
                        title: Column(
                          children: [

                            Align(alignment: Alignment.centerLeft,
                              child: Text('Name: ${name[index]}',
                                style: TextStyle(
                                  // fontWeight: FontWeight.bold,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Align(alignment: Alignment.centerLeft,
                              child: Text("Unit: ${unit[index]}"),
                            ),
                            Align(alignment: Alignment.centerLeft,
                              child: Text("Price: ${price[index]}"),
                            ),
                          ],
                        ),
                        trailing: ElevatedButton(
                          child: Text('Add to Cart'),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.black),
                          ),
                          onPressed: () {

                          },
                        ),
                      ),
                    ),
                  ),
                );
            },
            ),
        );
    }
}
