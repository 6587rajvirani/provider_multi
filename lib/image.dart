

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fiastprovider.dart';

class image_Screen extends StatefulWidget {
  const image_Screen({Key? key}) : super(key: key);

  @override
  State<image_Screen> createState() => _image_ScreenState();
}

class _image_ScreenState extends State<image_Screen> {
  var homeproviderfalse;
  @override

  Widget build(BuildContext context) {
    homeproviderfalse = Provider.of<fiast_Provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body:  Center(
          child:PageView.builder(
              scrollDirection: Axis.vertical,
                 itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 300,
                      width: 300,
                      margin: EdgeInsets.only(left: 8),
                      child: Image.asset(homeproviderfalse.seletect[index].image),
                    );
                  }
              ),
          ),
        ),
      );
  }
}
