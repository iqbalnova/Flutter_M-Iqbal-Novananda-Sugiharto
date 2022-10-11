import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:storage_provider/Models/data_model.dart';
import '../providers/register_providers.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nama = TextEditingController();
  final _noHp = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _passVisible = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _nama.dispose();
    _email.dispose();
    _noHp.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<RegisterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: _nama,
                  textCapitalization: TextCapitalization.words,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      size: 30,
                    ),
                    label: Text('Full Name'),
                  ),
                  validator: ((value) {
                    if (value == null || value.isEmpty) {
                      return 'Name field cant be empty';
                    } else {
                      return null;
                    }
                  }),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: _email,
                  decoration: const InputDecoration(
                      label: Text('Email'),
                      prefixIcon: Icon(
                        Icons.mail,
                        size: 25,
                      )),
                  validator: ((value) {
                    if (value == null || value.isEmpty) {
                      return 'Email field cant be empty';
                    } else if (!EmailValidator.validate(value)) {
                      return 'Invalid Email';
                    } else {
                      return null;
                    }
                  }),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: _noHp,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                      label: Text('Phone Number'),
                      prefixIcon: Icon(Icons.phone)),
                  validator: ((value) {
                    if (value == null || value.isEmpty) {
                      return 'Phone Number field cant be empty';
                    } else {
                      return null;
                    }
                  }),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  obscureText: _passVisible,
                  controller: _password,
                  decoration: InputDecoration(
                      label: const Text('Password'),
                      prefixIcon: const Icon(Icons.key),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _passVisible = !_passVisible;
                          });
                        },
                        child: Icon(_passVisible
                            ? Icons.visibility_off
                            : Icons.visibility),
                      )),
                  validator: ((value) {
                    if (value == null || value.isEmpty) {
                      return 'Password field cant be empty';
                    } else if (value.length < 8) {
                      return 'Password at least have 8 character';
                    } else {
                      return null;
                    }
                  }),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text('Submit'),
                  onPressed: () async {
                    final isValid = _formKey.currentState!.validate();
                    if (!isValid) return;

                    final value = DataModel(
                        _nama.text, _email.text, _noHp.text, _password.text);
                    await data.addData(value);
                    // ignore: use_build_context_synchronously
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/second', (route) => false);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
