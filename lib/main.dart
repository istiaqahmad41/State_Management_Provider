import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider_wscubetech/Page/ListPage.dart';
import 'package:state_management_provider_wscubetech/provider/ListMapProvider.dart';
import 'package:state_management_provider_wscubetech/provider/counter_provider.dart';

void main() {
  runApp( MultiProvider(providers: [

    ChangeNotifierProvider(create: (context)=> ListMapProvider()),
    ChangeNotifierProvider(create: (context)=> counter_provider()),
  ],
  child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListPage()

    
    );
  }
}

class homepage_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("function called!");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text(
          'State management with provider',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Center(child: Consumer(builder: (consumer_context, _, __) {
        print(" Consumer function called!");
        return Text(
          //getting the value of counter value >>
          '${

          //Provider.of<counter_provider>(consumer_context, listen: true).getValue()
        consumer_context.watch<counter_provider>().getValue()
          }',
          style: TextStyle(fontSize: 30, color: Colors.black),
        );
      })),
      floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton(
              onPressed: () {
              /*  Provider.of<counter_provider>(context, listen: false)
                    .incrementEvent();*/
                context.read<counter_provider>().incrementEvent();
              },
              backgroundColor: Colors.lightBlueAccent,
              child: Icon(Icons.add),
            ),
          ),
          Positioned(
            bottom: 16,
            right: 90,
            child: FloatingActionButton(
              onPressed: () {
               /* Provider.of<counter_provider>(context, listen: false)
                    .decrementEvent();*/
                context.read<counter_provider>().decrementEvent();
              },
              backgroundColor: Colors.lightBlueAccent,
              child: Icon(Icons.remove),
            ),
          )
        ],
      ),
    );
  }
}
//Text(
//         //getting the value of counter value >>
//         '${Provider.of<counter_provider>(context, listen: true).getValue()}',
//         style: TextStyle(fontSize: 30, color: Colors.black),
//       )
