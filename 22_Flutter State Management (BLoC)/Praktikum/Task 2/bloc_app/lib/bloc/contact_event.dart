import 'package:flutter/material.dart';

import '../Model/contact_model.dart';

@immutable
abstract class ContactEvent {}

class AddContact extends ContactEvent {
  final ContactModel contact;

  AddContact({required this.contact});
}

class DeleteContact extends ContactEvent {
  final ContactModel contact;

  DeleteContact({required this.contact});
}
