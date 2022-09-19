import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fiastprovider.dart';

class cart_Screen extends StatefulWidget {
  const cart_Screen({Key? key}) : super(key: key);

  @override
  State<cart_Screen> createState() => _cart_ScreenState();
}

class _cart_ScreenState extends State<cart_Screen> {
  var homeproviderfalse;
  var homeproviderTrue;

 @override
  Widget build(BuildContext context) {
    homeproviderfalse = Provider.of<fiast_Provider>(context, listen: false);
    homeproviderTrue = Provider.of<fiast_Provider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
          body: ListView.builder(
            itemCount: homeproviderTrue.cart.length,
              itemBuilder: (context,index)
             {
               return ListTile(
                 leading: Image.asset(homeproviderTrue.cart[index].Image),
                 title: Text("${homeproviderTrue.cart[index].Name}"),
                 subtitle: Text("${homeproviderTrue.cart[index].Rate}"),
                 trailing: IconButton(onPressed: (){
                   homeproviderfalse.remove(index);
                 },icon: Icon(Icons.delete),),
               );
             }
          ),
        )
    );
  }
}
