import 'package:flutter/material.dart';

class stepProvider extends ChangeNotifier{
  int i=0;
  var date =DateTime.now();
  var t1 = TimeOfDay.now();

  void getdata(dynamic data_1) {
    date = data_1;
    notifyListeners();
  }

  void setdata(dynamic set_2){
    t1 = set_2;
    notifyListeners();
   }

   void add(){
    if(i<5)
      {
        i++;
      }
    notifyListeners();
   }

   void decrement(){
    if(i>0){
      i--;
    }
    notifyListeners();
   }

   void stepClick(int i){
    this.i=i;
    notifyListeners();
   }
}