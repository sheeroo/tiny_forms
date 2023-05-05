# Tiny Forms

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)
[![License: MIT][license_badge]][license_link]

TinyForms is a minimalistic Flutter package for building simple and lightweight forms with easy customization and validation.

## Installation 💻

**❗ In order to start using Tiny Forms you must have the [Flutter SDK][flutter_install_link] installed on your machine.**

Add `tiny_forms` to your `pubspec.yaml`:

```yaml
dependencies:
  tiny_forms:
```

Install it:

```sh
flutter packages get
```

---
## Example
```dart
Column(
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
```
