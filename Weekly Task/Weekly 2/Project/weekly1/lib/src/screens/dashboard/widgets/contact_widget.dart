import 'package:flutter/material.dart';

class ContactUsWidget extends StatelessWidget {
  const ContactUsWidget({
    Key? key,
    required TextEditingController firstName,
    required TextEditingController lastName,
    required TextEditingController email,
    required TextEditingController helpText,
  })  : _firstName = firstName,
        _lastName = lastName,
        _email = email,
        _helpText = helpText,
        super(key: key);

  final TextEditingController _firstName;
  final TextEditingController _lastName;
  final TextEditingController _email;
  final TextEditingController _helpText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 30),
      child: Column(
        children: [
          Column(
            children: const [
              Text(
                'Kontak Kami',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Jl. Garuda No.177A, Manukan, Condongcatur, Depok, Sleman, Yogyakarta 55283, Indonesia. Phone: +62-274-883-507',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _firstName,
                  style: const TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    label: const Text('First Name'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: _lastName,
                  style: const TextStyle(fontSize: 15),
                  decoration: InputDecoration(
                    label: const Text('Last Name'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.all(10),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _email,
                style: const TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  label: const Text('Email'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.all(10),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                maxLines: 7,
                controller: _helpText,
                style: const TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  label: const Text('What can we help you with?'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  contentPadding: const EdgeInsets.all(10),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
