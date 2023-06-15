import 'package:flutter/material.dart';

class GalleryScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {

  var counter = 1;

  @override
  Widget build(BuildContext context) {
    var img = image[counter];

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 540) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(img),
                    SizedBox(height: 16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(onPressed: () {setState(() {
                          if(counter > 1) {
                            counter--;
                          }
                        });}, icon: Icon(Icons.arrow_left)),
                        Text(counter.toString()),
                        IconButton(onPressed: () {setState(() {
                          if(counter < 8) {
                            counter++;
                          }
                        });}, icon: Icon(Icons.arrow_right))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return SafeArea(
            child: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: IconButton(onPressed: () {setState(() {
                        if(counter > 1) {
                          counter--;
                        }
                      });}, icon: Icon(Icons.arrow_left), alignment: Alignment.centerRight,),
                    ),
                    Container(decoration: BoxDecoration(color: Colors.transparent),child: Expanded(child: Image.network(img))),
                    IconButton(onPressed: () {setState(() {
                      if(counter < 8) {
                        counter++;
                      }
                    });}, icon: Icon(Icons.arrow_right), alignment: Alignment.centerLeft,)
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}

var image = [
  'https://lv2-cdn.azureedge.net/nmixx/0ccaba082c9d46f4b88927bd447619d5-NMIXX%201st%20Single%20AD%20MARE%20Concept%20Photo%20MIX_2(700).jpg',
  'https://lv2-cdn.azureedge.net/nmixx/1835b46b12bf4c579789ec0f377c31f7-NMIXX%201st%20Single%20AD%20MARE%20Concept%20Photo%20MIX_1(700).jpg',
  "https://lv2-cdn.azureedge.net/nmixx/fb0db44c24f9498990d78d594a864cbc-NMIXX%201st%20Single%20AD%20MARE%20Concept%20Photo%20'MIX'%20KYUJIN.jpg",
  "https://lv2-cdn.azureedge.net/nmixx/212541a720064635afc9909ff0bf414e-NMIXX%201st%20Single%20AD%20MARE%20Concept%20Photo%20'MIX'%20JIWOO.jpg",
  "https://lv2-cdn.azureedge.net/nmixx/cab9879f629e45e2bad7a371c36c8e52-NMIXX%201st%20Single%20AD%20MARE%20Concept%20Photo%20'MIX'%20LILY.jpg",
  "https://lv2-cdn.azureedge.net/nmixx/82ac92d691f14e7fb57849fabf90a12f-NMIXX%201st%20Single%20AD%20MARE%20Concept%20Photo%20'MIX'%20BAE.jpg",
  "https://lv2-cdn.azureedge.net/nmixx/017a7172e82a4689a2265a3394a8628b-NMIXX%201st%20Single%20AD%20MARE%20Concept%20Photo%20'MIX'%20JINNI.jpg",
  "https://lv2-cdn.azureedge.net/nmixx/77f93161761948f3845097449ab19389-NMIXX%201st%20Single%20AD%20MARE%20Concept%20Photo%20'N'%20SULLYOON(700).jpg",
  "https://lv2-cdn.azureedge.net/nmixx/a54c7ce776cc48c990ae217d132a65e5-NMIXX%201st%20Single%20AD%20MARE%20Concept%20Photo%20'N'%20HAEWON(700).jpg"
];