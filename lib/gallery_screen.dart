import 'package:flutter/material.dart';

class GalleryScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {

  var counter = 1;

  @override
  Widget build(BuildContext context) {
    var img = 'images/img_$counter.png';

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 540) {
          return SafeArea(
            child: Container(
              margin: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(img),
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
          );
        } else {
          return SafeArea(
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
                  Container(decoration: BoxDecoration(color: Colors.transparent),child: Expanded(child: Image.asset(img))),
                  IconButton(onPressed: () {setState(() {
                    if(counter < 8) {
                      counter++;
                    }
                  });}, icon: Icon(Icons.arrow_right), alignment: Alignment.centerLeft,)
                ],
              ),
            ),
          );
        }
      },
    );
  }
}