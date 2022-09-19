import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'fiastprovider.dart';
import 'model.dart';

class moblieimage_Screen extends StatefulWidget {
  const moblieimage_Screen({Key? key}) : super(key: key);

  @override
  State<moblieimage_Screen> createState() => _moblieimage_ScreenState();
}

class _moblieimage_ScreenState extends State<moblieimage_Screen> {
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
              // Text("${Provider.of<stepProvider>(context,listen: true).date.day}"),
               Expanded(
                 child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemCount: homeproviderfalse.l1.length,
                  itemBuilder: (context,index)
                  {
                    return InkWell(onTap: (){
                      homeproviderfalse.Add();
                      homeproviderfalse.seletect = homeproviderfalse.data[index];
                      Navigator.pushNamed(context, 'two');
                    },
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                height: 150,
                                width: 150,
                                child: Image.asset(homeproviderfalse.l1[index].Image),
                              ),
                            ],
                          ),
                          Text("${homeproviderfalse.l1[index].Name}"),
                        ],
                      ),
                    );
                  }

                   ),
               ),
             ],
           ),
    ),
    );
  }
}
