import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:providerlec/providers/focus/focus_layout.dart';
import 'package:providerlec/providers/focus/focus_provider.dart';

class FocusNodeExample extends StatefulWidget {

  @override
  _FocusNodeExampleState createState() => _FocusNodeExampleState();
}

class _FocusNodeExampleState extends State<FocusNodeExample> {

  FocusNode _focusNode;
  FocusProvider _focusProvider;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusProvider = Provider.of<FocusProvider>(context, listen: false);  // listen: false - example
    _focusProvider.addListener(_isFocus);
  }


  @override
  void dispose() {
    _focusProvider.removeListener(_isFocus);
    _focusProvider.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _isFocus() {
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return FocusLayout(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 120.0,
                height: 50.0,
                color: Colors.green.withOpacity(0.3),
                child: TextField(
                  focusNode: _focusNode,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: 120.0,
                height: 50.0,
                color: Colors.red.withOpacity(0.3),
                child: TextField(
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
