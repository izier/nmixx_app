import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/discography.dart';
import 'disco_detail.dart';

class DiscographyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {

        if (constraints.maxWidth < 580) {
          return SafeArea(
            child: ListView.builder(
              itemBuilder: (context, index) {
                final Discography disco = discoList[index];
                return Container(
                  margin: EdgeInsets.all(16),
                  child: InkWell(
                    child: Column(
                      children: [
                        Image.network(disco.picture),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(disco.title, style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),),
                            Text(
                              disco.releaseDate, style: TextStyle(fontSize: 16),)
                          ],
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) {
                        return DiscoDetail(disco);
                      }));
                    },
                  ),
                );
              },
              itemCount: discoList.length,
            ),
          );
        } else if(constraints.maxWidth < 850) {
          return DiscoGrid(gridCount: 2);
        } else if(constraints.maxWidth < 1100) {
          return DiscoGrid(gridCount: 3);
        } else if(constraints.maxWidth < 1640){
          return DiscoGrid(gridCount: 4);
        } else {
          return DiscoGrid(gridCount: 6);
        }
      }
    );
  }
}

class DiscoGrid extends StatelessWidget{
  
  final int gridCount;
  
  DiscoGrid({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scrollbar(
        child: Container(
          margin: EdgeInsets.all(16),
          child: GridView.count(
            crossAxisCount: gridCount,
            children: discoList.map((disco) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DiscoDetail(disco);
                  }));
                },
                child: Column(
                  children: [
                    Expanded(
                      child: Image.network(disco.picture),
                    ),
                    SizedBox(height: 4,),
                    Container(
                      padding: EdgeInsets.all(4),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(disco.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                          Text(disco.releaseDate, style: TextStyle(fontSize: 16),)
                        ],
                      ),
                    )
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }

}