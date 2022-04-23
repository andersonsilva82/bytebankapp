import 'package:bytebank_persistencia/models/contacts.dart';
import 'package:bytebank_persistencia/screens/contact_form.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ContactList extends StatefulWidget {
  ContactList({Key? key}) : super(key: key);

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  final List<Contact> _contacts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemCount: _contacts.length,
        itemBuilder: (context, indice) {
          final contact = _contacts[indice];
          return NewContact(contact);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ContactForm(),
            ),
          ).then((newContact) {
            _atualiza(newContact);
          });

        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _atualiza(newContact) {
    if (newContact != null) {
      setState(() {
        _contacts.add(newContact);
      });
    }
  }
}

class NewContact extends StatelessWidget {
  final Contact _newContact;

  const NewContact(this._newContact, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          title: Text(_newContact.name.toString()),
          subtitle: Text(_newContact.accountNumber.toString()),
        ));
  }
}