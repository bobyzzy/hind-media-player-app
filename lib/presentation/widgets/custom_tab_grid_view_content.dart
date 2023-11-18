import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hind_app/data/models/photo_model.dart';
import 'package:http/http.dart' as http;

class CustomTabGridViewContent extends StatelessWidget {
  final String imageAsset;
  const CustomTabGridViewContent({
    super.key,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return GridView.builder(
            itemCount: snapshot.data!.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 4,
            ),
            itemBuilder: (context, index) {
              return ConstrainedBox(
                constraints: BoxConstraints.expand(
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
                child: Container(
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(snapshot.data![index].urls.small),
                    ),
                  ),
                ),
              );
            },
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

final API_CLIENT = 'Yjy9GY78zHGh0y-1u3dzDUWf6o4r8MJ4L99L1r9jyXA';

Future<List<PhotoModel>> getData() async {
  final request = http.Client();
  final response = await request.get(
      Uri.parse('https://api.unsplash.com/photos/random/?count=10'),
      headers: {'Authorization': 'Client-ID $API_CLIENT'});
  final json = jsonDecode(response.body) as List<dynamic>;

  List<PhotoModel> photos =
      json.map((json) => PhotoModel.fromJson(json)).toList();

  return photos;
}
