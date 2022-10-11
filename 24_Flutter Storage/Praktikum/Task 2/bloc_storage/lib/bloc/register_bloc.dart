import 'package:bloc_storage/Models/data_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'register_event.dart';
import 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc()
      : super(RegisterInitial(dataRegister: DataModel('', '', '', ''))) {
    on<AddRegister>((event, emit) {
      emit(RegisterLoaded(dataRegister: event.dataModel));
    });
    on<DeleteRegister>((event, emit) {
      // emit(ContactLoaded(contacts: [...state.contacts]..remove(event.contact)));
    });
  }
}
