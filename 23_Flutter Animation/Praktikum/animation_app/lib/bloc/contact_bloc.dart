import 'package:flutter_bloc/flutter_bloc.dart';

import 'contact_event.dart';
import 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ContactState> {
  ContactBloc() : super(const ContactInitial(contacts: [])) {
    on<AddContact>((event, emit) {
      emit(ContactLoaded(contacts: [...state.contacts]..add(event.contact)));
    });
    on<DeleteContact>((event, emit) {
      emit(ContactLoaded(contacts: [...state.contacts]..remove(event.contact)));
    });
  }
}
