import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nush_clothing_brand/HomeScreen.dart';
class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List imageList=[
  {"id":1,"image_path":"assets/bag_11.jpg"},
{"id":2,"image_path":"assets/bag_14.jpg"},
    {"id":3,"image_path":"assets/bag_10.jpg"},
    {"id":4,"image_path":"assets/bag_7.jpg"},
    {"id":5,"image_path":"assets/bag_15.jpg"},

  ];
  final CarouselController carouselController=CarouselController();
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            InkWell(
              onTap: (){
                print(currentIndex);

              },
              child: CarouselSlider(items: imageList.map(
                  (item)=>Image.asset(item['image_path'],
                  fit: BoxFit.cover,
                  width: double.infinity,)
              ).toList(),
                carouselController: carouselController,
                options: CarouselOptions(
                  scrollPhysics: const BouncingScrollPhysics(),
                  autoPlay: true,
                  viewportFraction: 1,
                  aspectRatio: 2,
                  onPageChanged: (index,reason){
                    setState(() {
                      currentIndex=index;
                    });
                  }
                ),


              ),
            ),
            Positioned(
              bottom: 10,left: 0,right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageList.asMap().entries.map((entry){
                    print(entry);
                    print(entry.key);
                    return GestureDetector(
                      onTap: ()=>carouselController.animateToPage(entry.key),
                      child: Container(
                        width: currentIndex==entry.key?17:7,
                        height: 7,
                        margin: const EdgeInsets.symmetric(
                          horizontal: 3.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex==entry.key?Colors.orange.shade100:Colors.orange
                        ),
                      ),
                    );
                  }).toList(),
                ))
          ],
        )
      ],

    );
  }
}
