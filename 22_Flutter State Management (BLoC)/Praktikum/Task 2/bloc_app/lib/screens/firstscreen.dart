import 'package:bloc_app/bloc/contact_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/contact_event.dart';
import '../bloc/contact_state.dart';
import 'secondscreen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<ContactBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Contact dengan BLoC'),
      ),
      body: BlocBuilder<ContactBloc, ContactState>(
        bloc: bloc,
        builder: (context, state) {
          if (state.contacts.isEmpty) {
            return const EmptyWidget();
          } else {
            return ListView.separated(
                padding: const EdgeInsets.all(20),
                itemBuilder: ((context, index) {
                  return ListTile(
                    tileColor: Colors.green[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.delete,
                        size: 26,
                      ),
                      onPressed: (() {
                        bloc.add(DeleteContact(contact: state.contacts[index]));
                      }),
                    ),
                    title: Text(state.contacts[index].nama),
                    subtitle: Text((state.contacts[index].noHp).toString()),
                  );
                }),
                separatorBuilder: (context, index) => const Divider(
                      color: Color.fromARGB(255, 207, 201, 201),
                    ),
                itemCount: state.contacts.length);
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (BuildContext context) {
              return const SecondScreen();
            },
          ));
        },
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            (Icons.group),
            size: 40,
          ),
          Text(
            'Your contact is empty',
          ),
        ],
      ),
    );
  }
}
