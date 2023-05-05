import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tiny_forms/src/bloc/form_bloc.dart';

/// The extension of the [TextFormField].
extension TextFormFiledExtension on TextFormField {
  /// Register the [TextFormField].
  Widget register({required String name}) {
    return _RegisterField(name: name, child: this);
  }
}

class _RegisterField extends StatefulWidget {
  const _RegisterField({
    required this.name,
    required this.child,
  });

  final String name;
  final TextFormField child;

  @override
  State<_RegisterField> createState() => _RegisterFieldState();
}

class _RegisterFieldState extends State<_RegisterField> {
  @override
  void initState() {
    super.initState();
    final controller = widget.child.controller;

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
    return widget.child;
  }
}
