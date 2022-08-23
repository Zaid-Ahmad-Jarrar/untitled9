import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoviesContainer extends StatelessWidget {
  final String? img;
  final String title;
  final int? runTime;
  final String releaseDate;
  final Function onPressed;
  final double vote;
  const MoviesContainer(
      {Key? key,
        required this.img,
        required this.title,
        required this.runTime,
        required this.releaseDate,
        required this.onPressed, required this.vote})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed().call,
      child: Container(
        constraints: BoxConstraints(maxHeight: 500, maxWidth: 200),
        height: 500,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: NetworkImage(
               'https://image.tmdb.org/t/p/w500${img}' ,
              ),
            )),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [

          Text(
            title,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [


              Text(
                releaseDate,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              )
            ],
          ),
          Row(
            children: [
              Container(
                decoration:
                BoxDecoration(border: Border.all(color: Colors.white)),

              ),

            ],
          )
        ]),
      ),
    );
  }
}
