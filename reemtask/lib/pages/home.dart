import 'package:flutter/material.dart';
import 'package:reemtask/pages/items_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://img.freepik.com/free-vector/astronaut-holding-star-cartoon-vector-icon-illustration-space-technology-icon-concept-isolated-premium-vector-flat-cartoon-style_138676-3495.jpg?t=st=1667570590~exp=1667571190~hmac=17b29516e86872d9bbade2d091b2d22676d60984a04c2e77a6d2ef40ebf3a639",
      "https://img.freepik.com/free-vector/cute-astronaut-pointing-rocket-cartoon-vector-icon-illustration-science-technology-icon-isolated_138676-4728.jpg?w=740&t=st=1667599066~exp=1667599666~hmac=2daf118f3f88ac3befcd23228be7ca3168ea0d80d412437f1d57e7cdee46681e",
    ];
    List<String> titles = ['The challenge', 'Play with me'];
    return Scaffold(
      appBar: AppBar(
        title: const Text("clickable GridView"),
      ),
      body: Container(
          padding: const EdgeInsets.all(12.0),
          child: GridView.builder(
            itemCount: images.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(ItemsDetails.routeName,
                        arguments: titles[index]);
                  },
                  child: GridTile(
                    footer: GridTileBar(
                        title: Text(
                      titles[index],
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
                    child: Image.network(images[index]),
                  ),
                ),
              );
            },
          )),
    );
  }
}
