import 'package:bloc_storage/Models/data_model.dart';
import 'package:bloc_storage/sharedpref/shared.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'register_event.dart';
import 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  late SharedData _shared;

  RegisterBloc()
      : super(RegisterInitial(dataRegister: DataModel('', '', '', ''))) {
    _shared = SharedData();

    on<AddRegister>((event, emit) async {
      await _shared.saveData(event.dataModel);
      final data = await _shared.getData();
      if (data != null) {
        emit(RegisterLoaded(dataRegister: data));
      }
    });
    on<DeleteRegister>((event, emit) async {
      await _shared.removeData();
      final data = await _shared.getData();
      if (data != null) {
        emit(RegisterLoaded(dataRegister: data));
      }
    });
  }
}
