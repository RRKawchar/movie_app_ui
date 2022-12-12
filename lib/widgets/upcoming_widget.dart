import 'package:flutter/material.dart';

class UpcomingWidget extends StatelessWidget {
  UpcomingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Upcoming Movies",style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w500
              ),),
              Text("See All",style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16,
              ),),
            ],
          ),
        ),
        const SizedBox(height: 15,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(up.length, (index) => Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(up[index]['image'].toString(),height: 180,width: 300,fit: BoxFit.cover,)),
              ))


            ],
          ),
        )
      ],
    );
  }

  List<Map<String,dynamic>> up=[
    {
      'image':"images/up/up1.jpg",
    },
    {
      'image':"images/up/up2.png",
    },
    {
      'image':"images/up/up3.jpg",
    },
    {
      'image':"images/up/up4.jpg",
    },
    {
      'image':"images/up/up5.webp",
    },
    {
      'image':"images/up/up6.jpg",
    },

  ];
}
