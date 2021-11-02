import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.yellow[800],
      appBar: AppBar(
        title: Text('matching'),
        backgroundColor: Colors.yellow,
        ),
        body: ImagePage(),
      ),
    )
  );
}
class ImagePage extends StatefulWidget {
  const ImagePage({ Key? key }) : super(key: key);

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 2;

  void changeImage(){
    leftImageNumber = Random().nextInt(8) + 1;
    rightImageNumber = Random().nextInt(8) + 1 ;
  }

  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          rightImageNumber == leftImageNumber ? "gooooood" : "try again",
          style: TextStyle(
            fontSize: 42.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [

              Expanded(
                //flex: 2,
                    child: TextButton(
                    onPressed: (){
                      setState(() {
                        changeImage();
                        }
                      );
                    },
                    child: Image.asset('images/image-$leftImageNumber.png')
                    ),

                  ),
                
              

              Expanded(
                //flex: 1,
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        changeImage();
                      });
                      },
                      child: Image.asset('images/image-$rightImageNumber.png'),
                    ),
                )
            ],
          ),
        ),
      ],
    );
  }
}