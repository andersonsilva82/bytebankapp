import 'package:flutter/material.dart';

import 'contacts_list.dart';

const String img_logo = 'images/bytebank_logo.png';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Dashboard'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [imagemLogo(), botaoContatos(context)],
      ),
    );
  }

  Padding botaoContatos(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ContactList(),
              ),
            );
          },
          child: Container(
            width: 120,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.people,
                    color: Colors.white,
                    size: 24,
                  ),
                  Text(
                    'Contacts',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding imagemLogo() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Image.asset(
        img_logo,
        alignment: AlignmentDirectional.center,
      ),
    );
  }
}
