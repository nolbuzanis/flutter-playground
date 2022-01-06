import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'dart:convert';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 1;
  List<ImageModel> images = [];

  void fetchImage() async {
    final uri = Uri.https('jsonplaceholder.typicode.com', '/photos/$counter');
    final response = await get(uri);
    final imageModel = ImageModel.fromJson(json.decode(response.body));

    setState(() {
      images.add(imageModel);
    });
    counter++;
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(images),
        floatingActionButton:
            FloatingActionButton(onPressed: fetchImage, child: Icon(Icons.add)),
        appBar: AppBar(
          title: Text('Lets see some images'),
        ),
      ),
    );
  }
}
