import 'package:bytebank_persistencia/models/contacts.dart';
import 'package:flutter/material.dart';

import '../database/app_database.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _accountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New contact'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Full name',
                ),
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              TextField(
                controller: _accountController,
                decoration: const InputDecoration(
                  labelText: 'Account number',
                ),
                style: const TextStyle(
                  fontSize: 20,
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.maxFinite, // Tamanho do botão
                child: ElevatedButton(
                  onPressed: () {
                    final String? name = _nameController.text;
                    final int? accountNumber =
                        int.tryParse(_accountController.text);
                    if (name != null && accountNumber != null) {
                      final Contact newContact =
                          Contact(0, name, accountNumber);
                      save(newContact)
                          .then((id) => Navigator.pop(context, newContact));
                    }
                  },
                  child: const Text(
                    'Create',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
