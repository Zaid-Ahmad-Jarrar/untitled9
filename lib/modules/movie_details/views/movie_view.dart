import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MovieView extends StatelessWidget {
  const MovieView ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = Get.arguments;
    return Scaffold(
backgroundColor: Color(0xFF64748B),
      body:   SingleChildScrollView(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: Get.width,
                      child: Image.network(
                        'https://image.tmdb.org/t/p/w500${args[1]['img']}',
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        InkWell(
                          onTap: (){Get.back();},
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            width: 50,
                            height: 50,
                            child: Icon(Icons.keyboard_arrow_left),
                          ),
                        ),

                        Icon(
                          Icons.favorite,
                          color: Colors.white,
                          size: 25,
                        )
                      ],
                    ),
                  ),


                ],
              ),

            Column(children: [

              Center(child: Text(args[0]['title'] , style: TextStyle(color: Colors.white, fontSize: 34 , fontWeight: FontWeight.w700 ), )),
              Center(
                child: Text(
                   ' Released in ${args[3]['release_date'].toString()}' , style: TextStyle(fontSize: 16 , color: Colors.white),),
              ),
              Padding(
              padding:  EdgeInsets.symmetric(vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                border: Border.all(color: Colors.white24),
                    borderRadius: BorderRadius.circular(12)),
                width: 100,
                height: 50,


                child: Center(
                  child: Text(
                      args[4]['vote'].toString()),
                ),
              ),
            ),
              Padding(
                padding:  EdgeInsets.symmetric( horizontal: 10),

                child: Text(args[2]['overview'] , style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300 ,color: Colors.white ),),
              ),],)

          ],
        ),
      ),
    );
  }
}
