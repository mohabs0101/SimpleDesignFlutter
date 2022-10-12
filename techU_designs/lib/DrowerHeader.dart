import 'package:flutter/material.dart';

class DrowerHeader extends StatefulWidget {
  const DrowerHeader({Key? key}) : super(key: key);

  @override
  State<DrowerHeader> createState() => _DrowerHeaderState();
}

class _DrowerHeaderState extends State<DrowerHeader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[700],
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top:20.0),
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Container(
      padding: EdgeInsets.only(bottom: 10.0),
      height: 70.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assits/446002.jpg'),
        )
      ),
    ),
    
    Text('mohammed',style: TextStyle(color: Colors.white,fontSize: 20),),
    Text('mohammedalwan22@gmail.com',style: TextStyle(color: Colors.grey[200],fontSize: 14),),
  ],
),

    );

  }
}

