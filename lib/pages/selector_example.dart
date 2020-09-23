import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerlec/providers/counter_provider.dart';

class SelectorExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Selector<CounterProvider, int>(
                builder: (context, data, _) {
                  return Text('$data');
                },
                selector: (context, countPro) => countPro.counterValue,
              ),
              RaisedButton(
                child: Text('decrement'),
                onPressed: Provider.of<CounterProvider>(context, listen: false).decrementCounter,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
