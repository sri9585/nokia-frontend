import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nokia/Screen/Login/Login.dart';
import 'package:nokia/provider/userProvider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => StudentProvider()
    )
  ],child: MyApp(),));
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
@override
  Widget build(BuildContext context){
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}