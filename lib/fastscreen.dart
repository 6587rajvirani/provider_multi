import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'fiastprovider.dart';
import 'model.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  var homeproviderfalse;
  var homeproviderTrue;

  @override
  Widget build(BuildContext context) {
    homeproviderfalse = Provider.of<fiast_Provider>(context, listen: false);
    homeproviderTrue = Provider.of<fiast_Provider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
          body: ListView.builder(
              itemCount: homeproviderfalse.l1.length,
              itemBuilder: (context, index){
                return InkWell(onTap: (){
                  homeproviderfalse.Datapick= Modeldata(Image: homeproviderfalse.l1[index].Image,Name:homeproviderfalse.l1[index].Name,Rate: homeproviderfalse.l1[index].Rate, );
                  Navigator.pushNamed(context, 'detile');
                  },
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 8),
                            height: 100,
                            width: 70,
                            child: Image.asset(homeproviderfalse.l1[index].Image),
                          ),
                          SizedBox(width: 20,),
                          Text("${homeproviderfalse.l1[index].Name}"),
                          Expanded(child: Container()),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("${homeproviderfalse.l1[index].Rate}"),
                          ),
                        ],
                      ),

                    ],
                  ),
                );
              },
          ),
        )
    );
  }
}
