import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerlec/providers/proxy/auth_provider.dart';
import 'package:providerlec/providers/proxy/data_provider.dart';

class ProxyProviderExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: <Widget>[
              RaisedButton(
                child: const Text('Get Permissions'),
                onPressed: (){
                    Provider.of<AuthProvider>(context, listen: false).changeStatus();   // call Auth Provider
                },
              ),
              const SizedBox(
                width: 10.0,
              ),
              RaisedButton(
                color: Provider.of<DataProvider>(context, listen: false).isAdmin ? Colors.green.withOpacity(0.5) : Colors.red.withOpacity(0.5) ,
                child: const Text('Show info'),
                onPressed: (){
                  Provider.of<DataProvider>(context, listen: false).showData();  // call Data Provider
                },
              ),
            Spacer(),
            Text(Provider.of<DataProvider>(context,).showSecretInformation()),
            ],
          ),
        ),
      ),
    );
  }
}
