
import 'package:flutter/material.dart';
import 'package:flutter_start/provider/album_provider.dart';
import 'package:provider/provider.dart';

import '../model/album.dart';



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late List<Album> albumList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AlbumProvider>(
      create: ((context) => AlbumProvider()),
      child: Scaffold(
        appBar: AppBar(
          title: Text("provider" ),
        ),
        body: Consumer<AlbumProvider>(
          builder: (context, provider, child) {
            albumList = provider.getAlbumList();
            return ListView.builder(
                itemCount: albumList.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    child: Text("${albumList[index].id} : ${albumList[index].title}"),
                  );
                }
            );
          },
        ),
      ),
    );
  }
}