import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerlec/pages/counter_example.dart';
import 'package:providerlec/pages/focusnode_example.dart';
import 'package:providerlec/pages/future_provider.dart';
import 'package:providerlec/pages/proxy_provider_example.dart';
import 'package:providerlec/pages/selector_example.dart';
import 'package:providerlec/providers/counter_provider.dart';
import 'package:providerlec/pages/stream_provider_example.dart';
import 'package:providerlec/providers/focus/focus_provider.dart';
import 'package:providerlec/providers/proxy/auth_provider.dart';
import 'package:providerlec/providers/proxy/data_provider.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Provider Demo',
        home: MultiProvider(
          providers: [

            ChangeNotifierProvider(create: (_) => FocusProvider()),

            ///  ChangeNotifierProvider(create: (_) => CounterProvider()),
            ChangeNotifierProvider.value(
              value: CounterProvider(),
            ),


            ChangeNotifierProvider(create: (_) => AuthProvider()),
            ChangeNotifierProvider(create: (_) => DataProvider()),


           ChangeNotifierProxyProvider<AuthProvider, DataProvider>(
             update: (ctx, auth, previousProducts) => DataProvider(isAdmin: auth.isUserAdmin),
           ),

          ],
          child: CounterExample(),
        )

        // home: ChangeNotifierProvider.value(
        //   value: CounterProvider(),
        //   child:  CounterExample(),
        // ),
        );
  }
}
