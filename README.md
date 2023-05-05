# Tiny Forms

TinyForms is a minimalistic Flutter package for building simple and lightweight forms with easy customization and validation.

## Installation 💻

Add `tiny_forms` to your `pubspec.yaml`:

```yaml
dependencies:
  tiny_forms: ^0.1.0+6
```

Install it:

```sh
flutter packages get
```

---
## Example
```dart
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
                validator: ValidationBuilder().minLength(5).build(),
                controller: TextEditingController(),
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
```
