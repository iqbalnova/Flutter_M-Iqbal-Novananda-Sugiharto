import 'package:bloc_storage/bloc/register_bloc.dart';
import 'package:bloc_storage/screens/home_screen.dart';
import 'package:bloc_storage/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import '../screens/secondscreen.dart';

class Routes extends StatelessWidget {
  const Routes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => RegisterBloc())],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.amber),
        title: 'Routes',
        initialRoute: '/',
        routes: {
          '/': (context) => const FirstScreen(),
          '/second': (context) => const SecondScreen(),
        },
      ),
    );
  }
}
