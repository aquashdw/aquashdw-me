import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void openMusicPrefPage(BuildContext context){
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Music Preferences Page'),
        ),
        body: const Center(
          child: Text(
            'This is the Music Preferences Page'
          ),
        ),
      );
    }
  ));
}

void openProjectsPage(BuildContext context){
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Projects Page'),
        ),
        body: const Center(
          child: Text(
            'This is the Projects Page'
          ),
        ),
      );
    }
  ));
}