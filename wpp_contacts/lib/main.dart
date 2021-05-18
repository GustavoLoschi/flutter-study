import 'package:flutter/material.dart';
import 'package:wpp_contacts/models/contact.dart';
import 'package:wpp_contacts/components/contact_list.dart';

main() => runApp(WppContacts());

class WppContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final _contacts = [
    Contact(
      name: 'Gustavo',
      phone: '(31) 99109-0045',
      image:
          'https://static4.depositphotos.com/1014511/324/i/600/depositphotos_3247683-stock-photo-just-a-big-kid-at.jpg',
    ),
    Contact(
      name: 'Júlio',
      phone: '(31) 92345-1234',
      image:
          'https://www.liveabout.com/thmb/s6wcupyhjrstpTmxv_3K8kLIPYM=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/feet-face-599c412c22fa3a0011d92add.jpg',
    ),
    Contact(
      name: 'Carlos',
      phone: '(31) 99887-2145',
      image:
          'https://fhox.com.br/wp-content/uploads/2018/03/funny-weird-wtf-stock-photos-18-5a39260c08f8a__700.jpg',
    ),
    Contact(
      name: 'Tereza',
      phone: '(31) 991240-2445',
      image:
          'https://fhox.com.br/wp-content/uploads/2018/03/funny-weird-wtf-stock-photos-19-5a3926af95d9d__700.jpg',
    ),
    Contact(
      name: 'Maria',
      phone: '(31) 99120-2567',
      image:
          'https://i.pinimg.com/236x/33/72/7d/33727d49449f596b3416cd4d5a314ad9--memes.jpg',
    ),
    Contact(
      name: 'Cátia',
      phone: '(31) 99150-7663',
      image:
          'https://64.media.tumblr.com/22f8cca39cb64e9b223fe8bab1dccead/tumblr_po8dh7Jks61wqb9aso1_1280.jpg',
    ),
    Contact(
      name: 'Carol',
      phone: '(31) 99651-2456',
      image:
          'https://fhox.com.br/wp-content/uploads/2018/03/funny-weird-wtf-stock-photos-50-5a3a37d0d0cab__700.jpg',
    ),
    Contact(
      name: 'Luiz',
      phone: '(31) 99345-1535',
      image: 'https://i.redd.it/wsvop2cak5w11.jpg',
    ),
    Contact(
      name: 'Alexandre',
      phone: '(31) 99213-1245',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWNLUzJmx2rX9WV5p2pkYkFxxQhRhDZ2a6SQ&usqp=CAU',
    ),
    Contact(
      name: 'Marina',
      phone: '(31) 99774-7453',
      image:
          'https://cdn.business2community.com/wp-content/uploads/2019/03/best-practices-stock-photos.jpg',
    ),
    Contact(
      name: 'Fernando',
      phone: '(31) 99542-1346',
      image:
          'https://nexter.org/wp-content/uploads/2019/07/weird-stock-images-photos-funny-pic.jpg',
    ),
    Contact(
      name: 'Pedro',
      phone: '(31) 99124-1267',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo8DHlqbyMCpGk_p2DfEpb_nbaG5gEcYnjI0SbSqBJQ__djN-J3RLg8WgetaJSffAyRjU&usqp=CAU',
    ),
    Contact(
      name: 'Patrícia',
      phone: '(31) 91257-3512',
      image:
          'https://ih1.redbubble.net/image.1036951232.8931/flat,750x,075,f-pad,750x1000,f8f8f8.jpg',
    ),
    Contact(
      name: 'Natan',
      phone: '(31) 97256-0916',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo8DHlqbyMCpGk_p2DfEpb_nbaG5gEcYnjI0SbSqBJQ__djN-J3RLg8WgetaJSffAyRjU&usqp=CAU',
    ),
    Contact(
      name: 'Letícia',
      phone: '(31) 94356-7835',
      image:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo8DHlqbyMCpGk_p2DfEpb_nbaG5gEcYnjI0SbSqBJQ__djN-J3RLg8WgetaJSffAyRjU&usqp=CAU',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[700],
        title: Center(
          child: Text('Contatos'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ContactList(_contacts),
          ],
        ),
      ),
    );
  }
}
