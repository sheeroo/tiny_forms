part of 'form_bloc.dart';

/// The state of the form.
class TinyFormState extends Equatable {
  /// The state of the form.
  const TinyFormState({
    this.data = const {},
  });

  /// The data of the form.
  final Map<String, dynamic> data;

  @override
  List<Object> get props => [data];
}
