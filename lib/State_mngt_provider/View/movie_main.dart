import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/State_mngt_provider/Provider/movie_provider.dart';
import 'package:flutter_new/State_mngt_provider/View/movie_wishlist.dart';
import 'package:provider/provider.dart';
void main(){
  runApp(ChangeNotifierProvider<MovieProvider>(
      create: (context)=>MovieProvider(),
    child: MaterialApp(home: Movie_main(),
      debugShowCheckedModeBanner: false,),
  ),
  );
}

class Movie_main extends StatelessWidget {
  const Movie_main({super.key});
  @override
  Widget build(BuildContext context) {
    var moviess=context.watch<MovieProvider>().movies;
    var wishlistt=context.watch<MovieProvider>().wishlist;
    return Scaffold(
      appBar: AppBar(title: Text('Movies'),),
      body: Column(children: [
        ElevatedButton.icon(onPressed: (){
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Movie_wishlist()));
        },
            icon: Icon(Icons.favorite), label: Text('Wishlist${wishlistt.length}')),
        Expanded(child: ListView.builder(
          itemCount: moviess.length,
            itemBuilder: (context,index)=>Card(
              child: ListTile(
                title: Text(moviess[index].title),
                subtitle: Text(moviess[index].time),
                trailing: IconButton(onPressed: (){
                  if(!wishlistt.contains(moviess[index])){
                    context
                        .read<MovieProvider>()
                        .add_wishlist(moviess[index]);
                  }
                  else{
                    context
                        .read<MovieProvider>()
                        .remove_wishlist(moviess[index]);
                  }
                }, icon: Icon(Icons.favorite,
                  color:wishlistt.contains(moviess[index])?
                  Colors.red:Colors.grey,)),
              ),
            )))
      ],
      ),
    );
  }
}
