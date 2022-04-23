import 'package:flutter/material.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({Key? key}) : super(key: key);

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  String? _previewImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 170,
          width: double.infinity,
          child: _previewImage == null
              ? const Text('No Location Chosen')
              : Image.network(
                  _previewImage!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
        ),
        Row(
          children: [
            FlatButton.icon(
              onPressed: () {},
              label: const Text('Current Location'),
              icon: const Icon(Icons.location_on),
            ),
            FlatButton.icon(
              onPressed: () {},
              label: const Text('Select Location'),
              icon: const Icon(
                Icons.map,
              ),
            ),
          ],
        )
      ],
    );
  }
}
