import 'package:bloc_storage/bloc/register_bloc.dart';
import 'package:bloc_storage/bloc/register_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   context.read<RegisterProvider>().getDataModel();
  // }

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<RegisterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: BlocBuilder<RegisterBloc, RegisterState>(
        bloc: bloc,
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello: ${state.dataRegister.nama}',
                  style: const TextStyle(fontSize: 30),
                ),
                Text(state.dataRegister.email,
                    style: const TextStyle(fontSize: 30)),
                ElevatedButton(
                    onPressed: () {
                      // context.read<RegisterProvider>().deleteData();
                      // Navigator.pushNamedAndRemoveUntil(
                      //     context, '/', (route) => false);
                    },
                    child: const Text('SignOut'))
              ],
            ),
          );
        },
      ),
    );
  }
}
