import 'package:flutter/material.dart';

import '../Model/contact_model.dart';

@immutable
abstract class ContactState {
  final List<ContactModel> contacts;

  const ContactState({required this.contacts});
}

class ContactInitial extends ContactState {
  const ContactInitial({required super.contacts});
}

class ContactLoaded extends ContactState {
  const ContactLoaded({required super.contacts});
}
