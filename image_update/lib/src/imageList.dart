import 'package:flutter/material.dart';
import '../model/json_image_model.dart';

class ListImage extends StatelessWidget {
  final List<ImageModel> images;
  ListImage(this.images);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        //return Image.network(images[index].url);
        return InkWell(
          onTap: () {
            print(images[index].id);
          },
          child: Card(
            child: ListTile(
              leading: Image.network(
                images[index].url,
                width: 40,
                height: 40.0,
              ),
              title: Text(images[index].title),
            ),
          ),
        );
      },
    );
  }
}
