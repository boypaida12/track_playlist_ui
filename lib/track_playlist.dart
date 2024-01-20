// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TrackPlaylist extends StatefulWidget {
  const TrackPlaylist({super.key});

  @override
  State<TrackPlaylist> createState() => _TrackPlaylistState();
}

class _TrackPlaylistState extends State<TrackPlaylist> {
  List<Map<String, dynamic>> feedItems = [
    {
      "name": "Sweather Weather",
      "title": "The Neighborhood",
      "profile":
          "https://www.nairaland.com/attachments/12420653_img20200922123338_jpegc3324609d3a50ff0aa04abe7a3a7376e",
      "is_audio": true
    },
    {
      "name": "Someone You LOved",
      "title": "Lewis Capaldi",
      "profile":
          "https://variety.com/wp-content/uploads/2021/09/Drake-publicity3-2021.jpg",
      "is_audio": false
    },
    {
      "name": "The Hills",
      "title": "The Weekend",
      "profile":
          "https://www.billboard.com/wp-content/uploads/2023/03/the-weeknd-avatar-premiere-2022-billboard-1548.jpg",
      "is_audio": false
    },
    {
      "name": "Happier Than Ever",
      "title": "Billie Eiish",
      "profile":
          "https://i0.wp.com/dubawa.org/wp-content/uploads/2021/01/sarkodie.jpg",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "Heat On",
      "profile":
          "https://www.nairaland.com/attachments/12420653_img20200922123338_jpegc3324609d3a50ff0aa04abe7a3a7376e",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "Heat On",
      "profile":
          "https://www.nairaland.com/attachments/12420653_img20200922123338_jpegc3324609d3a50ff0aa04abe7a3a7376e",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "Heat On",
      "profile":
          "https://www.nairaland.com/attachments/12420653_img20200922123338_jpegc3324609d3a50ff0aa04abe7a3a7376e",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "The Constant",
      "profile":
          "https://www.nairaland.com/attachments/12420653_img20200922123338_jpegc3324609d3a50ff0aa04abe7a3a7376e",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "Heat On",
      "profile":
          "https://www.nairaland.com/attachments/12420653_img20200922123338_jpegc3324609d3a50ff0aa04abe7a3a7376e",
      "is_audio": false
    },
    {
      "name": "Hit Song",
      "title": "More Hitz",
      "profile":
          "https://www.nairaland.com/attachments/12420653_img20200922123338_jpegc3324609d3a50ff0aa04abe7a3a7376e",
      "is_audio": false
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            color: Colors.black,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.withAlpha(100),
                borderRadius: BorderRadius.all(Radius.circular(28)),
              ),
            ),
          ),
          Positioned(
            top: 16,
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
              child: Column(
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Divider(
                    color: Colors.grey.withAlpha(100),
                    thickness: 4,
                    height: 5,
                    endIndent: 180,
                    indent: 180,
                  ),
                  Expanded(
                    child: Scaffold(
                      backgroundColor: Colors.black,
                      appBar: AppBar(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        leadingWidth: 150,
                        leading: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            "Tracks",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold
                                ),
                          ),
                        ),
                      ),
                      body: Container(
                        color: Colors.black,
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 8),
                        child: ListView.separated(
                            itemBuilder: (BuildContext context, int pos) {
                              Map<String, dynamic> item = feedItems[pos];
                    
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(
                                            item["is_audio"] ? 40 : 12),
                                    child: SizedBox(
                                      height: 80,
                                      width: 80,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                              left: 0,
                                              right: 0,
                                              top: 0,
                                              bottom: 0,
                                              child: Image.network(
                                                item["profile"],
                                                fit: BoxFit.cover,
                                              )),
                                          Positioned(
                                              left: 0,
                                              right: 0,
                                              top: 0,
                                              bottom: 0,
                                              child: item["is_audio"]
                                                  ? const Icon(
                                                      Icons.play_arrow,
                                                      size: 40,
                                                      color: Colors.white,
                                                    )
                                                  : Container())
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 12),
                                      child: RichText(
                                        text: TextSpan(
                                          text: "${item["name"]}\n",
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 18),
                                          children: <TextSpan>[
                                            TextSpan(
                                                text: item["title"],
                                                style: TextStyle(
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                    fontSize: 14)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.more_horiz,
                                    color: Colors.white,
                                  ),
                                ],
                              );
                            },
                            separatorBuilder: (BuildContext context, int pos) {
                              return const SizedBox(
                                height: 16,
                              );
                            },
                            itemCount: feedItems.length
                          ),
                      ),
                      // This trailing comma makes auto-formatting nicer for build methods.
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
