import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StreamProviderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamProvider<int>(
            initialData: 0,
            create: (_) => Stream<int>.periodic(Duration(milliseconds: 70), (count) => count + 1).take(100),
            child: Scaffold(
              appBar: AppBar(
                title: Text('StreamProvider'),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Consumer<int>(
                      builder: (context, percentDone, child) {
                        if (percentDone < 100) {
                          return Text("Loading... ($percentDone% done)");
                        }
                        return Text("Done loading!");
                      },
                      child:  Container(
                        height: 100,
                        width: 100,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
    );
  }
}