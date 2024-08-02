import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_clone/views/album_view.dart';
import 'package:spotify_clone/widgets/song_card.dart';

import '../widgets/album_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: BoxDecoration(
              color: Color(0xFf1C7A74),
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(.9),
                        Colors.black.withOpacity(1),
                        Colors.black.withOpacity(1),
                        Colors.black.withOpacity(1),
                      ],
                  ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recently Play",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Icon(Icons.history),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.settings),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          AlbumCard(
                            label: "Best Mode",
                            image: AssetImage("assets/album1.jpg"),
                            // onTap: (){
                            //   Navigator.push(context, MaterialPageRoute(builder: (context)=> AlbumView(),));
                            // },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          AlbumCard(
                            label: "Motivation Mix",
                            image: AssetImage("assets/album2.jpg"),
                            // onTap: (){
                            //   Navigator.push(context, MaterialPageRoute(builder: (context)=> AlbumView(),));
                            // },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          AlbumCard(
                            label: "Top 50-Global",
                            image: AssetImage("assets/album3.jpeg"),
                            // onTap: (){
                            //   Navigator.push(context, MaterialPageRoute(builder: (context)=> AlbumView(),));
                            // },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          AlbumCard(
                            label: "Best Mode",
                            image: AssetImage(
                              "assets/album6.jpg",
                            ),
                            // onTap: (){
                            //   Navigator.push(context, MaterialPageRoute(builder: (context)=> AlbumView(),));
                            // },
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          AlbumCard(
                            label: "Meditation",
                            image: AssetImage("assets/album5.jpeg"),
                            // onTap: (){
                            //   Navigator.push(context, MaterialPageRoute(builder: (context)=> AlbumView(),));
                            // },
                          ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text("Good evening",
                              style: Theme.of(context).textTheme.titleLarge),
                          SizedBox(height: 16),
                          Row (
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
                            children: [
                              RowAlbumCard(
                                label: "Top 50- Global",
                                image: AssetImage("assets/top50.jpg"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              RowAlbumCard(
                                label: "Top 50- Global",
                                image: AssetImage("assets/album1.jpg"),
                              ),

                            ],
                          ),
                          SizedBox(height: 16,),
                          Row (
                            children: [
                              RowAlbumCard(
                                label: "Top 50- Global",
                                image: AssetImage("assets/album2.jpg"),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              RowAlbumCard(
                                label: "Top 50- Global",
                                image: AssetImage("assets/album3.jpeg"),
                              ),
                            ],
                          ),
                          SizedBox(height: 16,),
                          Row (
                            children: [
                              RowAlbumCard(
                                label: "Top 50- Global",
                                image: AssetImage("assets/album4.png"),
                              ),
                              SizedBox(
                                width : 16,
                              ),
                              RowAlbumCard(
                                label: "Top 50- Global",
                                image: AssetImage("assets/album9.jpg"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Based on your recent listening",
                          style:Theme.of(context).textTheme.titleLarge ,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection:  Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              SongCard(image: AssetImage("assets/album5.jpeg"),),
                              SizedBox(width: 16,),
                              SongCard(image: AssetImage("assets/album6.jpg"),),
                              SizedBox(width: 16,),
                              SongCard(image: AssetImage("assets/album7.jpg"),),
                              SizedBox(width: 16,),
                              SongCard(image: AssetImage("assets/album8.jpg"),),
                              SizedBox(width: 16,),
                              SongCard(image: AssetImage("assets/album9.jpg"),),
                              SizedBox(width: 16,),
                              SongCard(image: AssetImage("assets/album10.jpg"),),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 16,),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Text("Recommended Radio",
                            style:Theme.of(context).textTheme.titleLarge ,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection:  Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              SongCard(image: AssetImage("assets/album1.jpg"),),
                              SizedBox(width: 16,),
                              SongCard(image: AssetImage("assets/album9.jpg"),),
                              SizedBox(width: 16,),
                              SongCard(image: AssetImage("assets/album7.jpg"),),
                              SizedBox(width: 16,),
                              SongCard(image: AssetImage("assets/album3.jpeg"),),
                              SizedBox(width: 16,),
                              SongCard(image: AssetImage("assets/album11.jpg"),),
                              SizedBox(width: 16,),
                              SongCard(image: AssetImage("assets/album10.jpg"),),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 16,),


                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowAlbumCard({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(4),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: image,
              fit: BoxFit.cover,
              height: 48,
              width: 48,
            ),
            SizedBox(
              width: 8,
            ),
            Text(label),
          ],
        ),
      ),
    );
  }
}
