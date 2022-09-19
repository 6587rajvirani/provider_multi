import 'package:flutter/material.dart';
 import 'package:provider/provider.dart';

import '../stepProvider.dart';

class date_Screen extends StatefulWidget {
  const date_Screen({Key? key}) : super(key: key);

  @override
  State<date_Screen> createState() => _date_ScreenState();
}

class _date_ScreenState extends State<date_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
              title: Text("Date",style: TextStyle(fontSize: 30),),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: (){
                  timeDialog();
                },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Date",style: TextStyle(fontSize: 40),),
                      ),
                      Icon(Icons.calendar_today_outlined,size: 40,)
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 125,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(child:
                    Text("${Provider.of<stepProvider>(context,listen: true).date.day}/${Provider.of<stepProvider>(context,listen: true).date.month}/${Provider.of<stepProvider>(context,listen: true).date.year}"
                    ,style:TextStyle(fontSize: 20),)),
                ),
              ],
            ),
          ),
        ),
    );
  }
  void timeDialog() async {
    var data = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(0),
        lastDate: DateTime(4000));
    Provider.of<stepProvider>(context, listen: false).getdata(data);
  }

}
