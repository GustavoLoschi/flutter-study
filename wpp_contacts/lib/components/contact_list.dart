import 'package:flutter/material.dart';
import 'package:wpp_contacts/components/contact_info.dart';
import 'package:wpp_contacts/models/contact.dart';

class ContactList extends StatelessWidget {
  final List<Contact> contact;

  ContactList(this.contact);

  void _selectContact(BuildContext context, var name, var phone, var image) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) {
          return ContactInfo(name, phone, image);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 70,
      child: ListView.builder(
        padding: EdgeInsets.only(top: 0, bottom: 0),
        itemCount: contact.length,
        itemBuilder: (ctx, index) {
          final ct = contact[index];
          return TextButton(
            child: Card(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 60.0,
                    height: 60.0,
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(ct.image),
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        ct.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            onPressed: () => _selectContact(context, contact[index].name,
                contact[index].phone, contact[index].image),
          );
        },
      ),
    );
  }
}
