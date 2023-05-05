import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiny_forms/src/bloc/form_bloc.dart';

/// TinyForms is a minimalistic Flutter package for building simple
///  and lightweight forms with easy customization and validation.
class TinyFormProvider extends StatelessWidget {
  /// The key to use for the form.
  const TinyFormProvider({
    super.key,
    required this.child,
  });

  // ignore: public_member_api_docs
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => TinyFormBloc(), child: child);
  }
}
