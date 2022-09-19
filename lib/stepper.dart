import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_multi/stepProvider.dart';

class stepper_Screen extends StatefulWidget {
  const stepper_Screen({Key? key}) : super(key: key);

  @override
  State<stepper_Screen> createState() => _stepper_ScreenState();
}

class _stepper_ScreenState extends State<stepper_Screen> {
  @override
  var homeproviderfalse;
  var homeproviderTrue;
  Widget build(BuildContext context) {
    homeproviderfalse = Provider.of<stepProvider>(context, listen: false);
    homeproviderTrue = Provider.of<stepProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
           body: Stepper(
             type: StepperType.vertical,
             physics: BouncingScrollPhysics(),
             elevation: 15,
             currentStep: homeproviderTrue.i,
             onStepCancel: (){homeproviderfalse.decrement();},
             onStepContinue: (){homeproviderfalse.add();},
             onStepTapped: (value){homeproviderfalse.stepClick(value);},
             steps: [
               Step(title: Text("first Name"), content: TextField(decoration: InputDecoration(label: Text("first Name")),)),
               Step(title: Text("middle Name"), content: TextField(decoration: InputDecoration(label: Text("middle Name")),)),
               Step(title: Text("last name"), content: TextField(decoration: InputDecoration(label: Text("last Name")),)),
               Step(title: Text("Moblie Name"), content: TextField(decoration: InputDecoration(label: Text("Mocblie Name")),)),
               Step(title: Text("rupees"), content: TextField(decoration: InputDecoration(label: Text("rupees")),)),

             ],

           ),
    ));
  }
}
