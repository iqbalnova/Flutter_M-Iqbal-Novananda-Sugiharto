import 'package:bloc_app/bloc/contact_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../screens/firstscreen.dart';
// import '../screens/secondscreen.dart';

class Routes extends StatelessWidget {
  const Routes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => ContactBloc())],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.amber),
        title: 'Routes',
        initialRoute: '/',
        routes: {
          '/': (context) => const FirstScreen(),
        },
      ),
    );
  }
}
