import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:tiny_forms/src/extensions/text_form_field_extension.dart';
import 'package:tiny_forms/src/form_client.dart';

void main() => runApp(ExampleApp());

/// Example app for TinyForms
class ExampleApp extends StatelessWidget {
  /// Example app for TinyForms
  ExampleApp({super.key});

  /// The [TinyFormClient] to use for the form.
  final formClient = TinyFormClient();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: formClient.formProvider(
          child: Column(
            children: [
              TextFormField(
                controller: TextEditingController(),
              ).register(name: 'username'),
              // Validation using the form_validator package
              TextFormField(
                controller: TextEditingController(),
                validator: ValidationBuilder().minLength(5).build(),
              ).register(name: 'username'),
              ElevatedButton(
                onPressed: formClient.handleSubmit((data) {
                  debugPrint(data.toString());
                }),
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
