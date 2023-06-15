import 'package:flutter/material.dart';

import 'model/discography.dart';

class DiscoDetail extends StatelessWidget {

  final Discography disco;

  DiscoDetail(this.disco);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text('Detail', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontWeight: FontWeight.w700),),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.all(16),
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth < 800) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(flex: 1,child: Image.network(disco.picture, width: 124,)),
                          SizedBox(width: 8,),
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(disco.artist, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 14),),
                                    Text(disco.title, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 36),),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Release Date'),
                                    Text(disco.releaseDate)
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 16),
                      Text(disco.description1,style: TextStyle(fontWeight: FontWeight.w500),),
                      SizedBox(height: 16,),
                      Text(disco.description2),
                      SizedBox(height: 16,),
                      Text('TRACK LIST', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                      SizedBox(height: 8,),
                      ListView.builder(
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          int num = index + 1;
                          final String song = disco.song[index];
                          return Text('$num' '. $song');
                        },
                        itemCount: disco.song.length,
                      )
                    ],
                  );
                } else if (constraints.maxWidth < 1200) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.network(disco.picture),
                                SizedBox(height: 16,),
                                Text('Release Date', style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: 8,),
                                Text(disco.releaseDate)
                              ],
                            ),
                          )
                      ),
                      SizedBox(width: 16,),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(disco.artist, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 14),),
                                Text(disco.title, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 36),),
                              ],
                            ),
                            SizedBox(height: 16),
                            Text(disco.description1,style: TextStyle(fontWeight: FontWeight.w500),),
                            SizedBox(height: 16,),
                            Text(disco.description2),
                            SizedBox(height: 16,),
                            Text('TRACK LIST', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                            SizedBox(height: 8,),
                            ListView.builder(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                int num = index + 1;
                                final String song = disco.song[index];
                                return Text('$num' '. $song');
                              },
                              itemCount: disco.song.length,
                            )
                          ],
                        ),
                      )
                    ],
                  );
                } else {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.network(disco.picture),
                                SizedBox(height: 16,),
                                Text('Release Date', style: TextStyle(fontWeight: FontWeight.bold),),
                                SizedBox(height: 8,),
                                Text(disco.releaseDate)
                              ],
                            ),
                          )
                      ),
                      SizedBox(width: 16,),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(disco.artist, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 14),),
                                Text(disco.title, style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w700, fontSize: 36),),
                              ],
                            ),
                            SizedBox(height: 16),
                            Text(disco.description1,style: TextStyle(fontWeight: FontWeight.w500),),
                            SizedBox(height: 16,),
                            Text(disco.description2),
                            SizedBox(height: 16,),
                            Text('TRACK LIST', style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.left),
                            SizedBox(height: 8,),
                            ListView.builder(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                int num = index + 1;
                                final String song = disco.song[index];
                                return Text('$num' '. $song');
                              },
                              itemCount: disco.song.length,
                            )
                          ],
                        ),
                      )
                    ],
                  );
                }
              }
            ),
          ),
        ),
      ),
    );
  }

}