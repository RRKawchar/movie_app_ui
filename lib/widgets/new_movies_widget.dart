import 'package:flutter/material.dart';

class NewMoviesWidget extends StatelessWidget {
  const NewMoviesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 10),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children:const [
             Text("New Movies",style: TextStyle(
               color: Colors.white,
               fontWeight: FontWeight.w500,
               fontSize: 25
             ),),
             Text("See All",style: TextStyle(
                 color: Colors.white54,
                 fontSize: 16
             ),)
           ],
         ),
       ),
        const SizedBox(height: 15,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for(int i=1;i<5;i++)
              InkWell(
                onTap:(){
                  Navigator.pushNamed(context, "moviePage");
                },
                child: Container(
                  height: 300,
                  width: 190,
                  margin: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    color:const Color(0xFF292B37),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color:const Color(0xFF292B37).withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 6
                      )
                    ]
                  ),
                  child: Column(
                    children: [
                         ClipRRect(

                           borderRadius: const BorderRadius.only(
                             topRight: Radius.circular(10),
                             topLeft: Radius.circular(10)
                           ),
                           child: Image.asset("images/newMovie/m$i.jpg",height: 200,width: 200,fit: BoxFit.cover,),
                         ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                         const Text("Movie Title here",style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w500
                          ),),
                          const SizedBox(height: 5,),
                         const Text("Action/Adventure",style: TextStyle(
                              color: Colors.white54,
                          ),),
                         const SizedBox(height: 8,),
                          Row(
                           children: const [
                             Icon(Icons.star,color: Colors.amber,),
                              SizedBox(width: 5,),
                             Text("8.5",style: TextStyle(
                               fontSize: 16,
                               color: Colors.white54
                             ),)
                           ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
