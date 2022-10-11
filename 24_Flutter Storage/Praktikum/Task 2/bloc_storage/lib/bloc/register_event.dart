import 'package:bloc_storage/Models/data_model.dart';
import 'package:flutter/material.dart';

@immutable
abstract class RegisterEvent {}

class AddRegister extends RegisterEvent {
  final DataModel dataModel;

  AddRegister({required this.dataModel});
}

class DeleteRegister extends RegisterEvent {
  final DataModel dataModel;

  DeleteRegister({required this.dataModel});
}
