import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../stepProvider.dart';

class time_screen extends StatefulWidget {
  const time_screen({Key? key}) : super(key: key);

  @override
  State<time_screen> createState() => _time_screenState();
}

class _time_screenState extends State<time_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Time",style: TextStyle(fontSize: 30),),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(onTap: (){
                timepicker();
              },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Time",style: TextStyle(fontSize: 40),),
                    ),
                    Icon(Icons.access_time,size: 40,)
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
                child: Center(child: Text("${Provider.of<stepProvider>(context,listen:true).t1.hour}:${Provider.of<stepProvider>(context,listen:true).t1.minute}",style:TextStyle(fontSize: 20),)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void timepicker()async{
    TimeOfDay?  t1 = await showTimePicker(context: context, initialTime: TimeOfDay.now());
    
      Provider.of<stepProvider>(context, listen: false).setdata(t1);

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("${(t1)}")));
  }
}
