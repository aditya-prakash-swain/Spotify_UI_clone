import 'package:flutter/material.dart';
import 'package:spotify_clone/views/album_view.dart';

class AlbumCard extends StatelessWidget {

  final ImageProvider image;
  final String label;
  //final Function onTap;
  final double size;
  const AlbumCard({Key? key,
    required this.image,
    required this.label,
    this.size=120,
    //required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> AlbumView(image: image,),));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: image, width: size, height: 120, fit: BoxFit.cover ,),
          SizedBox(height: 10,),
          Text(label),
        ],
      ),
    );

  }
}