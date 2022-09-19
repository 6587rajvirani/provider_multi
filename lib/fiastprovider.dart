import 'package:flutter/material.dart';

import 'model.dart';

class fiast_Provider extends ChangeNotifier {
  

  List<Modeldata>l1 = [
    Modeldata(Name: "vivo v23", Rate: "33,000₹", Image: "assets/image/moblie1.jpeg"),
    Modeldata(Name: "oppo Reno 7pro", Rate: "28,999₹", Image: "assets/image/moblie2.jpeg"),
    Modeldata(Name: "Samaung S22", Rate: "1,18,999₹", Image: "assets/image/moblie3.jpeg"),
    Modeldata(Name: "nothing phone 1", Rate: "34,999₹", Image: "assets/image/moblie4.jpeg"),
    Modeldata(Name: "narzo", Rate: "20,999₹", Image: "assets/image/moblie5.jpeg"),
    Modeldata(Name: "iphone 13 pro max", Rate: "1,39,600₹", Image: "assets/image/moblie6.jpeg"),
    Modeldata(Name: "Nokia XR20", Rate: "44,999₹", Image: "assets/image/moblie7.jpeg"),
    Modeldata(Name: "iqoo 9pro", Rate: "59,990₹", Image: "assets/image/moblie8.jpeg"),
    Modeldata(Name: "Samaung Galaxy Z fold 3", Rate: "1,39,999₹", Image: "assets/image/moblie9.jpeg"),
    Modeldata(Name: "mi mix alpha price", Rate: "2,02,000₹", Image: "assets/image/moblie10.jpeg"),
  ];
  List<imagedata>l2 = [
    imagedata(image: "assets/image/v1.jpeg"),
    imagedata(image: "assets/image/v2.jpeg"),
    imagedata(image: "assets/image/v3.jpeg"),
    imagedata(image: "assets/image/v4.jpg"),
    imagedata(image: "assets/image/v5.jpeg"),
    imagedata(image: "assets/image/v6.webp"),
    imagedata(image: "assets/image/v7.webp"),
    imagedata(image: "assets/image/v8.jpeg"),
    imagedata(image: "assets/image/v9.webp"),
    imagedata(image: "assets/image/v10.jpeg"),
  ];

  List<imagedata>l3 = [
    imagedata(image: "assets/image/o1.jpeg"),
    imagedata(image: "assets/image/o2.jpeg"),
    imagedata(image: "assets/image/o3.webp"),
    imagedata(image: "assets/image/o4.jpeg"),
    imagedata(image: "assets/image/o5.webp"),
    imagedata(image: "assets/image/o6.webp"),
    imagedata(image: "assets/image/o7.jpeg"),
    imagedata(image: "assets/image/o8.webp"),
    imagedata(image: "assets/image/o9.webp"),
    imagedata(image: "assets/image/o10.webp"),
  ];
  List<imagedata>l4 = [
    imagedata(image: "assets/image/s1.jpeg"),
    imagedata(image: "assets/image/s2.webp"),
    imagedata(image: "assets/image/s3.jpeg"),
    imagedata(image: "assets/image/s4.webp"),
    imagedata(image: "assets/image/s5.jpeg"),
    imagedata(image: "assets/image/s6.jpeg"),
    imagedata(image: "assets/image/s7.jpeg"),
    imagedata(image: "assets/image/s8.jpeg"),
    imagedata(image: "assets/image/s9.jpeg"),
    imagedata(image: "assets/image/s10.jpeg"),
  ];
  List<imagedata>l5 = [
    imagedata(image: "assets/image/no1.jpeg"),
    imagedata(image: "assets/image/no2.jpeg"),
    imagedata(image: "assets/image/no3.jpeg"),
    imagedata(image: "assets/image/no4.jpeg"),
    imagedata(image: "assets/image/no5.webp"),
    imagedata(image: "assets/image/no6.jpeg"),
    imagedata(image: "assets/image/no7.jpeg"),
    imagedata(image: "assets/image/no8.jpeg"),
    imagedata(image: "assets/image/no9.webp"),
    imagedata(image: "assets/image/no10.jpeg"),
  ];
  List<imagedata>l6 = [
    imagedata(image: "assets/image/n1.jpeg"),
    imagedata(image: "assets/image/n2.jpeg"),
    imagedata(image: "assets/image/n3.jpeg"),
    imagedata(image: "assets/image/n4.jpeg"),
    imagedata(image: "assets/image/n5.jpeg"),
    imagedata(image: "assets/image/n6.jpeg"),
    imagedata(image: "assets/image/n7.jpeg"),
    imagedata(image: "assets/image/n8.jpeg"),
    imagedata(image: "assets/image/n9.jpeg"),
    imagedata(image: "assets/image/n10.jpeg"),
  ];
  List<imagedata>l7 = [
    imagedata(image: "assets/image/i1.jpeg"),
    imagedata(image: "assets/image/i2.jpeg"),
    imagedata(image: "assets/image/i3.jpeg"),
    imagedata(image: "assets/image/i4.jpeg"),
    imagedata(image: "assets/image/i5.jpeg"),
    imagedata(image: "assets/image/i6.jpeg"),
    imagedata(image: "assets/image/i7.jpeg"),
    imagedata(image: "assets/image/i8.jpeg"),
    imagedata(image: "assets/image/i9.jpeg"),
    imagedata(image: "assets/image/i10.jpeg"),
  ];
  List<imagedata>l8 = [
    imagedata(image: "assets/image/k1.jpeg"),
    imagedata(image: "assets/image/k2.jpeg"),
    imagedata(image: "assets/image/k3.jpeg"),
    imagedata(image: "assets/image/k4.jpeg"),
    imagedata(image: "assets/image/k5.jpeg"),
    imagedata(image: "assets/image/k6.jpeg"),
    imagedata(image: "assets/image/k7.jpeg"),
    imagedata(image: "assets/image/k8.jpeg"),
    imagedata(image: "assets/image/k9.jpeg"),
    imagedata(image: "assets/image/k10.jpeg"),
  ];
  List<imagedata>l9 = [
    imagedata(image: "assets/image/q1.jpeg"),
    imagedata(image: "assets/image/q2.jpeg"),
    imagedata(image: "assets/image/q3.jpeg"),
    imagedata(image: "assets/image/q4.jpeg"),
    imagedata(image: "assets/image/q5.jpeg"),
    imagedata(image: "assets/image/q6.jpeg"),
    imagedata(image: "assets/image/q7.jpeg"),
    imagedata(image: "assets/image/q8.jpeg"),
    imagedata(image: "assets/image/q9.jpeg"),
    imagedata(image: "assets/image/q10.jpeg"),
  ];
  List<imagedata>l10 = [
    imagedata(image: "assets/image/z1.jpeg"),
    imagedata(image: "assets/image/z2.jpeg"),
    imagedata(image: "assets/image/z3.jpeg"),
    imagedata(image: "assets/image/z4.jpeg"),
    imagedata(image: "assets/image/z5.jpeg"),
    imagedata(image: "assets/image/z6.jpeg"),
    imagedata(image: "assets/image/z7.jpeg"),
    imagedata(image: "assets/image/z8.jpeg"),
    imagedata(image: "assets/image/z9.jpeg"),
    imagedata(image: "assets/image/z10.jpeg"),
  ];
  List<imagedata>l11 = [
    imagedata(image: "assets/image/x1.jpeg"),
    imagedata(image: "assets/image/x2.jpeg"),
    imagedata(image: "assets/image/x3.jpeg"),
    imagedata(image: "assets/image/x4.jpeg"),
    imagedata(image: "assets/image/x5.jpeg"),
    imagedata(image: "assets/image/x6.jpeg"),
    imagedata(image: "assets/image/x7.jpeg"),
    imagedata(image: "assets/image/x8.jpeg"),
    imagedata(image: "assets/image/x9.jpeg"),
    imagedata(image: "assets/image/x10.jpeg"),
  ];


  List data = [];
  List<imagedata> seletect = [];

  Modeldata?Datapick;
  imagedata?imagepick;

  List<Modeldata>cart = [];

  void Add() {
    data = [l2, l3, l4, l5, l6, l7, l8, l9, l10, l11];
  }
  void  remove(int index)
  {
    cart.removeAt(index);
    notifyListeners();
  }

}
