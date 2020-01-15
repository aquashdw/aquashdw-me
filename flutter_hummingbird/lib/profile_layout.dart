import 'package:flutter/material.dart';

class HorizontalProfileLayout extends StatelessWidget{
  final double width;
  final double height;

  const HorizontalProfileLayout({
    this.width,
    this.height
  }) : assert(width != null), assert(height != null);

  @override
  Widget build(BuildContext context) {
    double avatarRadius;
    double nicknameFontSize;
    double nameFontSize;
    double roleFontSize;
    double textFontSize;

    if(width / 2 < 50.0){
      avatarRadius = width * 9 / 10;
      nicknameFontSize = avatarRadius - (width / 10);
    }
    else{
      avatarRadius = 50.0;
      nicknameFontSize = 40.0;
    }
    nameFontSize = nicknameFontSize * 0.625;
    roleFontSize = nameFontSize * 0.8;
    textFontSize = 12;
    if(width > 1000){
      avatarRadius += 30;
      nicknameFontSize += 10;
      nameFontSize += 5;
      roleFontSize += 5;
      textFontSize += 3;
    }

    return Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 4,
              child: ProfileSet(
                avatarRadius: avatarRadius,
                nicknameFontSize: nicknameFontSize,
                nameFontSize: nameFontSize,
                roleFontSize: roleFontSize,
              ),
            ),
            Expanded(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.all(this.width / 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(this.height / 150),
                        child: Card(
                            elevation: 2,
                            child: ListTile(
                                leading: Icon(Icons.phone),
                                title: Text(
                                  '+811076506941',
                                  style: TextStyle(
                                      fontSize: textFontSize,
                                      color: Colors.black
                                  ),
                                )
                            )
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(this.height / 150),
                        child: Card(
                          elevation: 2,
                          child: ListTile(
                            leading: Icon(Icons.mail),
                            title: Text(
                              'aquashdw@gmail.com',
                              style: TextStyle(
                                  fontSize: textFontSize,
                                  color: Colors.black
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(this.height / 150),
                        child: Card(
                          elevation: 2,
                          child: ListTile(
                              leading: Icon(Icons.mail_outline),
                              title: Text(
                                'aquashdw@mindslab.ai',
                                style: TextStyle(
                                    fontSize: textFontSize,
                                    color: Colors.black
                                ),
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                )
            ),
          ],
        )
    );
  }
}

class VerticalProfileLayout extends StatelessWidget{
  final double width;
  final double height;
  const VerticalProfileLayout({
    this.width,
    this.height
  }) : assert(width != null), assert(height != null);

  @override
  Widget build(BuildContext context){
    double avatarRadius;
    double nicknameFontSize;
    double nameFontSize;
    double roleFontSize;
    double textFontSize;

    if(width < 100) {
      avatarRadius = width / 2;
      nicknameFontSize = avatarRadius - (width / 10);
    }
    else {
      avatarRadius = 50.0;
      nicknameFontSize = 40;
    }
    nameFontSize = nicknameFontSize * 0.625;
    roleFontSize = nameFontSize * 0.8;
    textFontSize = 12;
    if(width > 500){
      avatarRadius += 30;
      nicknameFontSize += 10;
      nameFontSize += 5;
      roleFontSize += 5;
      textFontSize += 3;
    }

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.only(
                    bottom: height / 40
                ),
                child: ProfileSet(
                  avatarRadius: avatarRadius,
                  nicknameFontSize: nicknameFontSize,
                  nameFontSize: nameFontSize,
                  roleFontSize: roleFontSize
                ),
              )
          ),
          Expanded(
              flex: 5,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      left: width / 20,
                      right: width / 20,
//                    top: height / 20,
//                    bottom: height / 20
                    ),
                    child: Card(
                        elevation: 2,
                        child: ListTile(
                            leading: Icon(Icons.phone),
                            title: Text(
                              '+811076506941',
                              style: TextStyle(
                                  fontSize: textFontSize,
                                  color: Colors.black
                              ),
                            )
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: width / 20,
                      right: width / 20,
                    ),
                    child: Card(
                      elevation: 2,
                      child: ListTile(
                        leading: Icon(Icons.mail),
                        title: Text(
                          'aquashdw@gmail.com',
                          style: TextStyle(
                              fontSize: textFontSize,
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: width / 20,
                      right: width / 20,
                    ),
                    child: Card(
                      elevation: 2,
                      child: ListTile(
                          leading: Icon(Icons.mail_outline),
                          title: Text(
                            'aquashdw@mindslab.ai',
                            style: TextStyle(
                                fontSize: textFontSize,
                                color: Colors.black
                            ),
                          )
                      ),
                    ),
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}

class ProfileSet extends StatelessWidget{
  final double avatarRadius;
  final double nicknameFontSize;
  final double nameFontSize;
  final double roleFontSize;

  const ProfileSet({
    this.avatarRadius,
    this.nicknameFontSize,
    this.nameFontSize,
    this.roleFontSize
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        CircleAvatar(
          radius: avatarRadius,
          backgroundImage:
          AssetImage('assets/images/profile.png'),
        ),
        Text(
          'aquashdw',
          style: TextStyle(
            fontSize: nicknameFontSize,
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
            fontFamily: 'KaushanScript'
          ),
        ),
        Text(
          'Jeeho Park',
          style: TextStyle(
            fontSize: nameFontSize,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
            fontFamily: 'SourceSansPro'
          ),
        ),
        Text(
          'Mindslab AICS Team',
          style: TextStyle(
            fontSize: roleFontSize,
            color: Colors.black87,
            fontWeight: FontWeight.normal,
            fontFamily: 'SourceSansPro'
          ),
        ),
        Text(
          'Dev Leader',
          style: TextStyle(
            fontSize: roleFontSize,
            color: Colors.black87,
            fontWeight: FontWeight.normal,
            fontFamily: 'SourceSansPro'
          ),
        )
      ],
    );
  }
}
