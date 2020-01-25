import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stream_games/page/Login/page_login.dart';

class Myuser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(6),
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.shopping_cart),
            trailing: Icon(Icons.arrow_right),
            title: Text('Historico de Compras',
              style: TextStyle(color: Colors.black87),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.clear_all),
            trailing: Icon(Icons.arrow_right),
            title: Text('Parcelas',
            style: TextStyle(color: Colors.black87),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.credit_card),
            trailing: Icon(Icons.arrow_right),
            title: Text('Forma de pagamento',
              style: TextStyle(color: Colors.black87),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            trailing: Icon(Icons.arrow_right),
            title: Text('Configurações',
              style: TextStyle(color: Colors.black38),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.help),
            trailing: Icon(Icons.arrow_right),
            title: Text('Ajuda',
              style: TextStyle(color: Colors.black38),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            trailing: Icon(Icons.arrow_right),
            title: Text('Notificação',
              style: TextStyle(color: Colors.black38),
            ),
            onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.close),
            trailing: Icon(Icons.arrow_right),
            title: Text('Sair',
              style: TextStyle(color: Colors.black38),
            ),
            onTap: ()=> Navigator.push(context, MaterialPageRoute
              (builder: (context) => login())
            ),
          ),
        ],
      ),
    );
  }
}
