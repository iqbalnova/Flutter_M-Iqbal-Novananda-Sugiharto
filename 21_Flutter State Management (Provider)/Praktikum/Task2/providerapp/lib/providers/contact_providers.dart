import 'package:flutter/material.dart';
import 'package:providerapp/Model/contact_model.dart';

class ContactProvider extends ChangeNotifier {
  final List<ContactModel> _dataContact = [];

  List get dataContact => _dataContact;

  void addContact(ContactModel value) {
    _dataContact.add(value);
    notifyListeners();
  }

  void deleteContact(ContactModel value) {
    _dataContact.remove(value);
    notifyListeners();
  }
}
