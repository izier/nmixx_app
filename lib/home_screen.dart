import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 500) {
          return Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      '- NEW RELEASE -',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Poppins'
                      ),
                    ),
                  ),
                  Text(
                    'AD MARE',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                    ),
                  ),
                  Center(
                    child: Text(
                      'O.O',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 144,
                          color: Colors.white
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          child: Text(
                            'Listen now >',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                        onTap: () => launch('https://youtu.be/3GWscde8rM8'),
                      )
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/bg.png'),
                    fit: BoxFit.cover
                )
            ),
          );
        } else {
          return Container(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      '- NEW RELEASE -',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Poppins'
                      ),
                    ),
                  ),
                  Text(
                    'AD MARE',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                    ),
                  ),
                  Center(
                    child: Text(
                      'O.O',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 144,
                          color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(height: 24,),
                  Container(
                      child: InkWell(
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                          child: Text(
                            'Listen now >',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                        onTap: () => launch('https://youtu.be/3GWscde8rM8'),
                      )
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/bg_big.png'),
                  fit: BoxFit.cover
                )
            ),
          );
        }
      },
    );
  }
}

