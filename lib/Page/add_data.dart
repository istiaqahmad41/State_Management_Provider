
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/ListMapProvider.dart';



class add_data  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
return Scaffold(

  appBar: AppBar(
    title: Text('add data from this page'),

  ),
  body: Center(
    child: IconButton(onPressed: (){

      context.read<ListMapProvider>().addData(
          {
            "ContactName": "Istiaq Ahmad",
            "MobileNo":"01887928594"
          }
      );


    }, icon: Icon(Icons.add)),
  ),
);
  }

}