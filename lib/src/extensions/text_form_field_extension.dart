import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiny_forms/src/bloc/form_bloc.dart';

/// The extension of the [TextFormField].
extension TextFieldX on TextField {
  /// Register the [TextFormField].
  Widget register({required String name}) {
    return _RegisterField(name: name, textFieldChild: this);
  }
}

// ignore: public_member_api_docs
extension TextFormFiledExtension on TextFormField {
  /// Register the [TextFormField].
  Widget register({required String name}) {
    return _RegisterField(name: name, textFormFieldChild: this);
  }
}

class _RegisterField extends StatefulWidget {
  const _RegisterField({
    required this.name,
    this.textFormFieldChild,
    this.textFieldChild,
  }) : assert(
          textFieldChild != null || textFormFieldChild != null,
          'The widget must be a TextFormField or a TextField.',
        );

  final String name;
  final TextFormField? textFormFieldChild;
  final TextField? textFieldChild;

  @override
  State<_RegisterField> createState() => _RegisterFieldState();
}

class _RegisterFieldState extends State<_RegisterField> {
  @override
  void initState() {
    super.initState();

    final controller = widget.textFormFieldChild?.controller ??
        widget.textFieldChild?.controller;

    assert(controller != null, 'The controller must not be null.');
    controller!.addListener(() {
      context.read<TinyFormBloc>().add(
            FormUpdate(
              data: {
                widget.name: controller.text,
              },
            ),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return (widget.textFormFieldChild ?? widget.textFieldChild)!;
  }
}
