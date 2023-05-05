import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'form_event.dart';
part 'form_state.dart';

/// The bloc of the form.
class TinyFormBloc extends Bloc<TinyFormEvent, TinyFormState> {
  /// The bloc of the form.
  TinyFormBloc() : super(const TinyFormState()) {
    on<FormUpdate>(_onFormUpdate);
    on<FormReset>(_onFormReset);
  }

  void _onFormUpdate(FormUpdate event, Emitter<TinyFormState> emit) {
    final prev = state.data;
    emit(TinyFormState(data: {...prev, ...event.data}));
  }

  void _onFormReset(FormReset event, Emitter<TinyFormState> emit) {
    emit(const TinyFormState());
  }
}
