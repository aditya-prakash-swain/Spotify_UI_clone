import 'package:flutter/material.dart';
import 'package:spotify_clone/widgets/album_card.dart';

class AlbumView extends StatefulWidget {
  const AlbumView({super.key, required this.image});
  final ImageProvider image;

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  late ScrollController scrollController;
  double imageSize = 0;
  double initialSize = 240;
  double containerHeight = 500;
  double containerInitialHeight = 500;
  double imageOpacity = 1;
  bool showTopBar= false;




  @override
  void initState() {
    imageSize = initialSize;
    scrollController = ScrollController()
      ..addListener(() {
        imageSize = initialSize - scrollController.offset ;

        if (imageSize < 0) {
          imageSize = 0;
        }
        containerHeight = containerInitialHeight - scrollController.offset ;
        if (containerHeight < 0) {
          containerHeight = 0;
        }
        imageOpacity = imageSize / initialSize;
        if(scrollController.offset>224){
          showTopBar= true;
        }
        else{
          showTopBar= false;
        }
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cardSize= MediaQuery.of(context).size.width/2 - 32;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: containerHeight,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            color: Colors.pink,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: imageOpacity.clamp(0, 1.0),
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.5),
                        offset: Offset(0, 20),
                        blurRadius: 32,
                        spreadRadius: 16,
                      ),
                    ]),
                    child: Image(
                      image: widget.image,
                      width: imageSize,
                      height: imageSize,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              controller: scrollController,
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    clipBehavior: Clip.none,
                    width: MediaQuery.of(context).size.width,
                    height: 500,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0),
                            Colors.black.withOpacity(0),
                            Colors.black.withOpacity(1),
                          ]),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          SizedBox(
                            height: initialSize + 32,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  ".........",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage('assets/logo.png'),
                                      width: 32,
                                      height: 32,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text("Spotify")
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "1,888,345 likes 5h 3m",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.favorite),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Icon(Icons.more_horiz),
                                      ],
                                    ),
                                    Positioned(
                                      right: 0,
                                      bottom: 0,
                                      child: Stack(
                                          alignment: Alignment.bottomRight,
                                          children: [
                                            // Container(
                                            //   height: 64,
                                            //   width: 64,
                                            //   alignment: Alignment.center,
                                            //   decoration: BoxDecoration(
                                            //     shape: BoxShape.circle,
                                            //     color: Color(0xff14D860),
                                            //   ),
                                            //   child: Icon(
                                            //     Icons.play_arrow,
                                            //     size: 38,
                                            //   ),
                                            // ),
                                            Container(
                                              height: 24,
                                              width: 24,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                              ),
                                              child: Icon(
                                                Icons.shuffle,
                                                color: Colors.black,
                                                size: 14,
                                              ),
                                            )
                                          ]
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("about the album......", ),
                        SizedBox(height: 32,),
                        Text("You might also like", style: Theme.of(context).textTheme.titleLarge,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumCard(
                                  image: AssetImage("assets/album3.jpeg"),
                                  label: "Get Turnt",
                                size: cardSize,
                              ),
                              AlbumCard(
                                image: AssetImage("assets/album4.png"),
                                label: "Get Turnt",
                                size: cardSize,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumCard(
                                image: AssetImage("assets/album3.jpeg"),
                                label: "Get Turnt",
                                size: cardSize,
                              ),
                              AlbumCard(
                                image: AssetImage("assets/album4.png"),
                                label: "Get Turnt",
                                size: cardSize,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical:16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumCard(
                                image: AssetImage("assets/album3.jpeg"),
                                label: "Get Turnt",
                                size: cardSize,
                              ),
                              AlbumCard(
                                image: AssetImage("assets/album4.png"),
                                label: "Get Turnt",
                                size: cardSize,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            child: Container(
              child: AnimatedContainer(
                duration: Duration(milliseconds: 250),
                color: showTopBar
                    ? Color(0xffc61855).withOpacity(1)
                    : Color(0xffc61855).withOpacity(0),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: SafeArea(
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.keyboard_arrow_left, size: 38,),
                          ),
                        ),
                        AnimatedOpacity(
                          duration: Duration(milliseconds: 250),
                          opacity: showTopBar ? 1: 0,
                          child: Text(
                            "album name",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 80 - containerHeight.clamp(120.0, double.infinity),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Container(
                                  height: 64,
                                  width: 64,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff14D860),
                                  ),
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 38,
                                  ),
                                ),
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Icon(
                                    Icons.shuffle,
                                    color: Colors.black,
                                    size: 14,
                                  ),
                                )
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
