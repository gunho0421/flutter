import 'package:app/provider/album_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/album.dart';

class Album_provider_view extends StatefulWidget {
  const Album_provider_view({super.key});

  @override
  State<Album_provider_view> createState() => _Album_provider_viewState();
}

class _Album_provider_viewState extends State<Album_provider_view> {

  late List<Album> albumList;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AlbumProvider>(
      create: ((context) => AlbumProvider()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("test title"),
        ),
        body: Consumer<AlbumProvider>(
          builder: (context, provider, child) {
            albumList = provider.getAlbumList();
            return ListView.builder(
                itemCount: albumList.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(10),
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
