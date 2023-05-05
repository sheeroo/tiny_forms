part of 'form_bloc.dart';

/// The event of the form.
abstract class TinyFormEvent {}

/// The event to submit the form.

class FormSubmit extends TinyFormEvent {
  /// The event to submit the form.
  FormSubmit();
}

/// The event to update the form.
class FormUpdate extends TinyFormEvent {
  /// The event to update the form.
  FormUpdate({
    required this.data,
  });

  /// The data to update the form with.
  final Map<String, dynamic> data;
}

/// The event to reset the form.
class FormReset extends TinyFormEvent {
  /// The event to reset the form.
  FormReset();
}
