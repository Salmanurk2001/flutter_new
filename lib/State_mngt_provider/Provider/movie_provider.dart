import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter_new/State_mngt_provider/Model/movie.dart';

//sample list
final List<Movie> movielist=List.generate(
    100, (index) => Movie(title: 'Movie$index',
            time: "${Random().nextInt(100)+60}minutes"));

class MovieProvider extends ChangeNotifier{
  final List<Movie> _movies=movielist;
  List<Movie> get movies=>_movies;//getter to access list of movies

  final List<Movie> _wishlist=[];
  List<Movie> get wishlist=>_wishlist;//getter to access list of wishlist

  void add_wishlist(Movie selected_movie) {
    wishlist.add(selected_movie);
    notifyListeners();
  }

  void remove_wishlist(Movie selected_movie) {
    wishlist.remove(selected_movie);
    notifyListeners();
  }
}