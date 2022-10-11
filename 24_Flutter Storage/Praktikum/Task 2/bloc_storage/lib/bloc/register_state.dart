import 'package:bloc_storage/Models/data_model.dart';
import 'package:flutter/material.dart';

@immutable
abstract class RegisterState {
  final DataModel dataRegister;

  const RegisterState({required this.dataRegister});
}

class RegisterInitial extends RegisterState {
  const RegisterInitial({required super.dataRegister});
}

class RegisterLoaded extends RegisterState {
  const RegisterLoaded({required super.dataRegister});
}
