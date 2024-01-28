
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class InsuranceForm extends StatefulWidget {
  const InsuranceForm({super.key});

  @override
  State<InsuranceForm> createState() => _InsuranceFormState();
}

class _InsuranceFormState extends State<InsuranceForm> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedTariff;
  File? _medicalDocument;

  Future<void> _pickDocument() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _medicalDocument = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Заявка на страховой платеж'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DropdownButtonFormField<String>(
                value: _selectedTariff,
                hint: Text(
                  'Выберите тариф',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                onChanged: (newValue) {
                  setState(() {
                    _selectedTariff = newValue;
                  });
                },
                validator: (value) => value == null ? 'Выберите тариф' : null,
                items: <String>['Тариф 1', 'Тариф 2', 'Тариф 3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const SizedBox(height: 20),
              _medicalDocument == null
                  ? ElevatedButton(
                      onPressed: _pickDocument,
                      child: const Text('Загрузить медицинский документ'),
                    )
                  : Text('Документ загружен: ${_medicalDocument!.path}'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate() && _medicalDocument != null) {
                    // Отправка данных
                  }
                },
                child: const Text('Отправить заявку'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
