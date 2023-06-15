import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/member.dart';

class ProfileScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  Member highlight = memberList[0];
  var boxState;
  var textState;
  var btnMargin;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 500) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 8,),
                  SizedBox(
                    height: 24,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final Member member = memberList[index];
                        if(member == highlight){
                          boxState = BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)
                          );
                          textState = TextStyle(color: Colors.white);
                        }
                        else{
                          boxState = BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(20)
                          );
                          textState = TextStyle(color: Colors.black);
                        }
                        if(member.name == 'LILY') {
                          btnMargin = EdgeInsets.only(left: 16, right: 4);
                        } else if (member.name == 'KYUJIN') {
                          btnMargin = EdgeInsets.only(right: 16, left: 4);
                        } else {
                          btnMargin = EdgeInsets.symmetric(horizontal: 4);
                        }
                        return InkWell(
                          child: Container(
                              child: Center(child: Text(member.name, style: textState,)),
                              margin: btnMargin,
                              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                              decoration: boxState
                          ),
                          onTap: () {
                            setState(() {
                              highlight = member;
                            });
                          },
                        );
                      },
                      itemCount: memberList.length,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Image.network(highlight.image),
                      ),
                      Container(
                          margin: EdgeInsets.all(16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            highlight.name,
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 48,
                                                fontWeight: FontWeight.w700
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text('Hangeul: '),
                                              Text(highlight.hangeul)
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text('Birthdate: '),
                                              Text(highlight.birthdate)
                                            ],
                                          ),
                                        ],
                                      )
                                    ]
                                ),
                                Image.asset('images/profile_dec.png', width: 12)
                              ]
                          )
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        } else if (constraints.maxWidth < 810) {
          return SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 8,),
                  SizedBox(
                    height: 24,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final Member member = memberList[index];
                        if(member == highlight){
                          boxState = BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)
                          );
                          textState = TextStyle(color: Colors.white);
                        }
                        else{
                          boxState = BoxDecoration(
                              border: Border.all(color: Colors.black, width: 1, style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(20)
                          );
                          textState = TextStyle(color: Colors.black);
                        }
                        if(member.name == 'LILY') {
                          btnMargin = EdgeInsets.only(left: 16, right: 4);
                        } else if (member.name == 'KYUJIN') {
                          btnMargin = EdgeInsets.only(right: 16, left: 4);
                        } else {
                          btnMargin = EdgeInsets.symmetric(horizontal: 4);
                        }
                        return InkWell(
                          child: Container(
                              child: Center(child: Text(member.name, style: textState,)),
                              margin: btnMargin,
                              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                              decoration: boxState
                          ),
                          onTap: () {
                            setState(() {
                              highlight = member;
                            });
                          },
                        );
                      },
                      itemCount: memberList.length,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16),
                        child: Image.network(highlight.image, width: 400,),
                      ),
                      Container(
                          margin: EdgeInsets.all(16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            highlight.name,
                                            style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 48,
                                                fontWeight: FontWeight.w700
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Text('Hangeul: '),
                                              Text(highlight.hangeul)
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text('Birthdate: '),
                                              Text(highlight.birthdate)
                                            ],
                                          ),
                                        ],
                                      )
                                    ]
                                ),
                                Image.asset('images/profile_dec.png', width: 12)
                              ]
                          )
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        } else {
          return SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Expanded(flex: 1,child: Container()),
                      Expanded(flex: 5,child: SizedBox(
                        width: 120,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            final Member member = memberList[index];
                            if (highlight == member) {
                              textState = TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              );
                            } else {
                              textState = TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.normal
                              );
                            };
                            return InkWell(
                              child: Container(
                                padding: EdgeInsets.only(right: 4),
                                margin: EdgeInsets.symmetric(vertical: 2),
                                alignment: Alignment.centerRight,
                                child: Text(member.name, style: textState),
                              ),
                              onTap: () {
                                setState(() {
                                  highlight = member;
                                });
                              },
                            );
                          },
                          itemCount: memberList.length,
                        ),
                      ),)
                    ],
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Image.network(highlight.image, width: 456,),
                SizedBox(width: 16),
                Container(
                  width: 200,
                  child: Column(
                    children: [
                      Expanded(flex: 3,child: Container(),),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              highlight.name,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 36,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                            Row(
                              children: [
                                Text('Hangeul: '),
                                Text(highlight.hangeul)
                              ],
                            ),
                            Row(
                              children: [
                                Text('Birthdate: '),
                                Text(highlight.birthdate)
                              ],
                            ),
                          ],
                        )
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}