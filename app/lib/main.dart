import 'package:app/cubit/get_api_cubit.dart';
import 'package:app/view/home_screen.dart';
import 'package:app/view/simple_calculetor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
        create: (context) => GetApiCubit(),
      ),
    ],
    child: MyApp(),
  ));
}
 
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SimpleCalculetor(),
    );
  }
}
