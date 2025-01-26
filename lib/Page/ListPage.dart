import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_provider_wscubetech/Page/add_data.dart';
import 'package:state_management_provider_wscubetech/provider/ListMapProvider.dart';

class ListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(

    appBar: AppBar(
      title: Text('List Page'),
    ),

 body: Consumer<ListMapProvider>(

   builder: (ctx,provider,__child){
     var allData =provider.getData();
     return allData.isNotEmpty ? ListView.builder(
         itemCount: allData.length,

         itemBuilder: (_,index){


return ListTile(


            title: Text('${allData[index] ['ContactName']    }'),
  subtitle: Text('${allData[index] ['MobileNo']    }'),
);

     }):Center(child: Text('No Names..!!'),);

   },




     



 ),


 floatingActionButton: FloatingActionButton(onPressed: (){


   Navigator.push(context, MaterialPageRoute(builder: (context)=>add_data()));



 }
 ,child: Icon(Icons.add),),









  );
  }


}