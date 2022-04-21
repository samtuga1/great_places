import 'package:flutter/material.dart';
import 'package:place_app/providers/great_places.dart';
import 'package:provider/provider.dart';
import '../screens/add_place_screen.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AddPlaceScreen.routeName);
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Consumer<GreatPlaces>(builder: (ctx, greatPlaces, ch) {
        if (greatPlaces.places.isEmpty) {
          return const Text('Got no places Yet... Add places');
        } else {
          return ListView.builder(
            itemCount: greatPlaces.places.length,
            itemBuilder: (ctx, i) => ListTile(
              leading: CircleAvatar(
                backgroundImage: FileImage(greatPlaces.places[i].image!),
              ),
              title: Text(greatPlaces.places[i].title!),
              onTap: () {
                // go to detail screen
              },
            ),
          );
        }
      }),
    );
  }
}
