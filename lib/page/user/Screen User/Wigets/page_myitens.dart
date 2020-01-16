import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Myuser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Compras',
              style: TextStyle(color: Colors.black87),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: Text('Formas de Pagamento',
            style: TextStyle(color: Colors.black87),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.location_on),
            title: Text('Endereço',
              style: TextStyle(color: Colors.black87),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Configurações',
              style: TextStyle(color: Colors.black38),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Ajuda',
              style: TextStyle(color: Colors.black38),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notificação',
              style: TextStyle(color: Colors.black38),
            ),
            onTap: (){},
          ),
        ],
      ),
    );
  }
}
