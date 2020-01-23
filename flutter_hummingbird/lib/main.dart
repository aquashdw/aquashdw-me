import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hummingbird/profile_subpage.dart';
import 'profile_layout.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'profile page of aquashdw',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomeScaffold(),
    );
  }
}

class HomeScaffold extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hi!'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.backup),
            tooltip: 'Projects',
            onPressed: (){
              openProjectsPage(context);
            },
          ),
          IconButton(
            icon: Icon(Icons.headset),
            tooltip: 'Music Preferences',
            onPressed: (){
              openMusicPrefPage(context);
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background_opac.jpg'),
                fit: BoxFit.cover,
//                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop)
              )
            ),
          ),
          Container(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints){
                if (constraints.maxWidth < constraints.maxHeight)
                  return VerticalProfileLayout(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                  );
                else // if (constraints.maxHeight < constraints.maxWidth || constraints.maxHeight == constraints.maxWidth)
                  return HorizontalProfileLayout(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight,
                  );
              },
            )
          ),
        ]
      )
    );
  }
}
