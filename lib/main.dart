import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:provider_multi/drawer/time.dart';
import 'package:provider_multi/stepProvider.dart';
import 'package:provider_multi/stepper.dart';
import 'package:provider_multi/tabbarview.dart';
import 'cartscreen.dart';
import 'detilscreen.dart';
import 'drawer/date.dart';
import 'fastscreen.dart';
import 'fiastprovider.dart';
import 'image.dart';
import 'mobliedetils_Screen.dart';
import 'moblieimage.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<fiast_Provider>(
          create: (context) => fiast_Provider(),
        ),
        ListenableProvider<stepProvider>(
          create: (context) => stepProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => TabBarview_Screen(),
          'home': (context) => homescreen(),
          'detile': (context) => detilScreen(),
          'cart': (context) => cart_Screen(),
          'image': (context) => moblieimage_Screen(),
          'moblieD': (context) => moblie_DetilsScreen(),
          'two': (context) => image_Screen(),
          'date':(context)=>date_Screen(),
          'time':(context)=>time_screen(),
          'step':(context)=>stepper_Screen(),

        },
      ),
    ),
  );
}
