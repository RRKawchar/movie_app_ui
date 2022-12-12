import 'package:flutter/material.dart';

class RecommendWidget extends StatelessWidget {
  const RecommendWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding:const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:const [
            Text("Recommended",style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.w500
            ),),
            Text("See all",style: TextStyle(
                fontSize: 16,
                color: Colors.white54,
            ),),
          ],
        ),
        ),
       const SizedBox(height: 15,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for(int i=1;i<11;i++)
              Padding(padding:const EdgeInsets.only(left: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset("images/cat/cat$i.jpg",fit: BoxFit.cover,height: 100,width: 150,),
                ),
              )

            ],
          ),
        )
      ],
    );
  }
}
