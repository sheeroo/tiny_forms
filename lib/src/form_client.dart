import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiny_forms/src/bloc/form_bloc.dart';

/// TinyForms is a minimalistic Flutter package for building simple
/// and lightweight forms with easy customization and validation.
final bloc = TinyFormBloc();
// ignore: public_member_api_docs
final form = GlobalKey<FormState>();

// ignore: public_member_api_docs
class TinyFormClient {
  /// The key to use for the form.
  const TinyFormClient();

  /// The [TinyFormBloc] to use for the form.

  /// The [GlobalKey] to use for the form.

  /// The [TinyFormBloc] to use for the form.
  Widget formProvider({required Widget child}) {
    return Form(
      key: form,
      child: BlocProvider.value(value: bloc, child: child),
    );
  }

  /// Internal method to validate all fields and get form data
  void Function()? handleSubmit(
    // ignore: inference_failure_on_function_return_type
    Function(Map<String, dynamic> data) onSubmit,
  ) {
    return () {
      final isValid = form.currentState?.validate() ?? false;

      if (isValid) {
        final data = bloc.state.data;
        onSubmit(data);
      }
    };
  }
}
