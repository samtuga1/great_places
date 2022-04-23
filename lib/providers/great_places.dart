import 'package:flutter/foundation.dart';
import '../models/place.dart';
import 'dart:io';
import '../helpers/db_helper.dart';

class GreatPlaces with ChangeNotifier {
  List<Place> _places = [];
  List<Place> get places {
    return [..._places];
  }

  void addPlace(String? pickedTile, File? pickedImage) {
    final newPlace = Place(
      id: DateTime.now().toString(),
      title: pickedTile,
      image: pickedImage,
      location: null,
    );
    _places.add(newPlace);
    notifyListeners();
    DBHelper.insert('places', {
      'id': newPlace.id,
      'title': newPlace.title,
      'image': newPlace.image!.path
    });
  }
}
