import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home: GridView_Staggered(),debugShowCheckedModeBanner: false,));
}
class GridView_Staggered extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(),
     body: StaggeredGrid.count(
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 5,
        children: [
          StaggeredGridTile.extent(
            crossAxisCellCount: 4,
            mainAxisExtent: 200,
            child: Container(
              decoration: BoxDecoration(image: DecorationImage(
                image: AssetImage(
                    "assets/Images/wallpaperflare.com_wallpaper.jpg"),
                  fit: BoxFit.fill
              )),
            )
        ),
          StaggeredGridTile.extent(
              crossAxisCellCount: 3,
              mainAxisExtent:200,
              child: Container(
                decoration: BoxDecoration(image: DecorationImage(
                    image: AssetImage(
                        "assets/Images/wallpaperflare.com_wallpaper.jpg"),fit: BoxFit.fill
                )),
              )
          ),
          StaggeredGridTile.extent(
              crossAxisCellCount: 2,
              mainAxisExtent:250,
              child: Container(
                decoration: BoxDecoration(image: DecorationImage(
                    image: AssetImage(
                        "assets/Images/wallpaperflare.com_wallpaper.jpg"),
                    fit: BoxFit.fill
                )),
              )
          )
        ],
      )
    );
  }
}