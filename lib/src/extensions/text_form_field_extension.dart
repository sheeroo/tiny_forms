import 'package:flutter/material.dart';

/// The extension of the [TextFormField].
extension TextFormFiledExtension on TextFormField {
  /// Register the [TextFormField].
  Widget register({required String name}) {
    return _RegisterField(child: this);
  }
}

class _RegisterField extends StatefulWidget {
  const _RegisterField({
    required this.child,
  });

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
      debugPrint(controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
