import 'package:flutter/material.dart';

class MoviePageButtons extends StatelessWidget {
  const MoviePageButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildMovieButton(Icons.add),
          buildMovieButton(Icons.favorite_border),
          buildMovieButton(Icons.download),
          buildMovieButton(Icons.share),
        ],
      ),
    );
  }

  Widget buildMovieButton(IconData icon) {
    return Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color(0xFF292B37),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: const Color(0xFF292B37).withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4)
              ]),
          child: Icon(
           icon,
            color: Colors.white,
            size: 35,
          ),
        );
  }
}
