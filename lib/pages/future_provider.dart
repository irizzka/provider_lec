import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FutureProviderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureProvider<bool>(
        initialData: true,
        create: (_) => Future.delayed(Duration(seconds: 4), () => false),

        child: Scaffold(
          appBar: AppBar(
            title: Text('FutureProvider'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Consumer<bool>(
                  builder: (context, saving, child) {
                    return Text(saving ? "Saving..." : "Saved!");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
