import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:snack/snack.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:drawerbehavior/drawerbehavior.dart';
import 'DrowerHeader.dart';
void main() => runApp(MaterialApp(
      home: myclass(),
    ));

class myclass extends StatelessWidget {
  final bar = SnackBar(
    content: Text('Hello, world! iam snackbar'),
  );

  void show_toast() {
    Fluttertoast.showToast(
        msg: 'toast message ',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'technoU designs',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container(
                color: Colors.red,
                width: 200,
                height: 100,
                child: Image.asset("assits/1050665.jpg")),
          ),
          ElevatedButton(
            onPressed: show_toast,
            child: Text('show toast'),
          ),
          ElevatedButton(
            child: Text('show snackbar'),
            onPressed: () {
              bar.show(context);
            },
          ),
          ElevatedButton(
            child: Text('show alert dialog'),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('title of dialog'),
                      content: Text('content of dialog'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                        ElevatedButton(
                          child: Text('close'),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ],
                    );
                  });
            },
          ),
          ElevatedButton(
            child: Text('show second page'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => secondPage()),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        child: Text('click'),
        backgroundColor: Colors.blueGrey,
      ),

      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                DrowerHeader(),
           ListTile(
             title: Text('iam tile'),
             onTap: (){},
           ),
                ListTile(
                  title: Text('iam tile2'),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('iam tile3'),
                  onTap: (){},
                )
              ],
            ),
          ),

        ),

      ),


    );
  }
}

class secondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'second page',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container(
                color: Colors.red,
                width: 200,
                height: 100,
                child: Image.asset("assits/1050665.jpg")),
          ),
          ElevatedButton(
            child: Text('return to main page'),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'book',
          ),
        ],
      ),
    );
  }
}


