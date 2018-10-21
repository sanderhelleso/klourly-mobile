// import flutter helper libary
import 'package:flutter/material.dart';

class App extends StatefulWidget {
    createState() {
        return AppState();
    }
}

// create class serving as a custom Widget
// must extend the 'StatelessWidget' base class
class AppState extends State<App> {

    // counter, incremented on button clcick
    int counter = 0;

    // must define a 'build' method that returns  
    // the widget that *this* widget will show
    Widget build(context) {
        return MaterialApp(
            home: Scaffold(
                body: Text('Heyyo $counter'),
                floatingActionButton: FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                        setState(() {
                            // increment counter
                            counter++;
                        });
                    },
                ),
                appBar: AppBar(
                    title: Text('Klourly')
                ),
            ),
        );
    }
}
