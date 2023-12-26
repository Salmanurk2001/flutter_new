
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/movie_provider.dart';

void main(){
  runApp(ChangeNotifierProvider<MovieProvider>(
    create: (context)=>MovieProvider(),
    child: MaterialApp(home: Movie_wishlist(),
      debugShowCheckedModeBanner: false,),
  ),
  );
}
class Movie_wishlist extends StatelessWidget {
  const Movie_wishlist({super.key});
  @override
  Widget build(BuildContext context) {
    var wishlistt=context.watch<MovieProvider>().wishlist;
    return Scaffold(
      appBar: AppBar(title: Text('Wishlist',
        style: TextStyle(fontSize: 25),),),
      body: ListView.builder(
          itemCount: wishlistt.length,
          itemBuilder: (context,index)=>Card(
            color: Colors.pink[100],
            child: ListTile(
              title: Text(wishlistt[index].title),
              subtitle: Text(wishlistt[index].time),
              trailing: IconButton(onPressed: (){
                context
                    .read<MovieProvider>()
                    .remove_wishlist(wishlistt[index]);
              }
              , icon: Icon(Icons.delete,
                color:wishlistt.contains(wishlistt[index])?
                Colors.red:Colors.grey,)),
            ),
          )),
    );
  }
}
