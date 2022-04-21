// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import '../widgets/image_input.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeName = '/add-place';
  const AddPlaceScreen({Key? key}) : super(key: key);

  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  final _titleController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Place')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        label: Text('Title'),
                      ),
                      controller: _titleController,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const ImageInput()
                  ],
                ),
              ),
            ),
          ),
          RaisedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text('Add Place'),
            color: Theme.of(context).accentColor,
          )
        ],
      ),
    );
  }
}
