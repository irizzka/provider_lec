import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerlec/providers/counter_provider.dart';

class CounterExample extends StatefulWidget {

  @override
  _CounterExampleState createState() => _CounterExampleState();
}

class _CounterExampleState extends State<CounterExample> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<CounterProvider>(
        builder: (BuildContext ctx, counterProvider, Widget child){
          return Center(
            child: Container(
              height: 300.0,
              width: 200.0,
              child: Container(
                color: Colors.red.withOpacity(0.8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(counterProvider.counterValue.toString()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        RaisedButton(
                          child: const Text('decrement'),
                          onPressed: counterProvider.decrementCounter,
                        ),
                        RaisedButton(
                          child: const Text('increment'),
                          onPressed: counterProvider.incrementCounter,
                        ),
                      ],
                    ),
                    child,
                  ],
                ),
              ),
            ),
          );
        },

        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),
          child: Text('static part of data'),
          height: 200.0,
          width: double.infinity,
          color: Colors.green,
        ),
      ),
    );
  }
}
