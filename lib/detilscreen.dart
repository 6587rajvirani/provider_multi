import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fiastprovider.dart';

class detilScreen extends StatefulWidget {
  const detilScreen({Key? key}) : super(key: key);

  @override
  State<detilScreen> createState() => _detilScreenState();
}

class _detilScreenState extends State<detilScreen> {
  var homeproviderfalse;
  var homeproviderTrue;
  @override
  Widget build(BuildContext context) {
  homeproviderfalse = Provider.of<fiast_Provider>(context, listen: false);
  homeproviderTrue = Provider.of<fiast_Provider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                height: 350,
                child: Image.asset(homeproviderfalse.Datapick.Image!),
              ),
              CupertinoButton(child: Icon(Icons.shopping_cart,color: Colors.red,),
                  onPressed: (){
                  homeproviderfalse.cart.add(homeproviderfalse.Datapick!);
                  }
              ),
            ],
          ),
        )
    );
  }
}
