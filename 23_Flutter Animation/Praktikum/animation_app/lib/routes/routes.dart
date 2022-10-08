import 'package:animation_app/bloc/contact_bloc.dart';
import 'package:animation_app/screens/dashboard_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import '../screens/main_contact_screen.dart';
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
        theme: ThemeData(primarySwatch: Colors.blue),
        title: 'Routes',
        initialRoute: '/',
        routes: {
          '/': (context) => const Dashboard(),
        },
      ),
    );
  }
}
