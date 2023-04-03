import 'package:flutter/material.dart';
import 'package:play_store/screen/foryou/view/foryou_screen.dart';
import 'package:play_store/screen/home/provider/home_provider.dart';
import 'package:play_store/screen/home/view/home_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => homeprovider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'for',
        routes: {
          '/':(context) => home_screen(),
          'foryou':(context) =>foryou_screen(),


        },
      ),
    ),
  );
}
