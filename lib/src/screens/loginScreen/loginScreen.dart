import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size.width / 400;
    return new Scaffold(
      body: new Container(
        child: new Stack(
          //fit: StackFit.passthrough,
          children: <Widget>[
            new Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              height: mediaQuery * 240.0,
              child: new Container(
                color: Theme.of(context).primaryColor,
                alignment: FractionalOffset.center,
                child: new Image.asset(
                  'images/icon.png',
                  height: mediaQuery * 90.0,
                  width: mediaQuery * 90.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            new Positioned(
              top: mediaQuery * 160.0,
              left: mediaQuery * 20.0,
              right: mediaQuery * 20.0,
              bottom: 0.0,
              child: new ListView(
                itemExtent: mediaQuery * 500.0,
                children: [
                  new Container(
                    padding:
                        new EdgeInsets.symmetric(horizontal: mediaQuery * 20.0),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          width: mediaQuery * 1.0, color: Colors.black26),
                      borderRadius: BorderRadius.circular(mediaQuery * 5.0),
                    ),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Container(
                          margin: new EdgeInsets.only(top: mediaQuery * 10.0),
                          child: new Text(
                            'Bem-vindo',
                            style: new TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: mediaQuery * 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        new TextFormField(
                          decoration: new InputDecoration(labelText: 'Usuário'),
                        ),
                        new TextFormField(
                          decoration: new InputDecoration(
                            labelText: 'Senha',
                          ),
                        ),
                        new Container(
                            alignment: FractionalOffset.centerRight,
                            child: new FlatButton(
                                onPressed: () {},
                                child: new Text(
                                  'Esqueceu sua senha?',
                                  style: new TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ))),
                        new Container(
                          width: double.infinity,
                          child: new RaisedButton(
                            onPressed: () {},
                            color: Theme.of(context).primaryColor,
                            child: new Text(
                              'LOGIN',
                              style: new TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        new Container(
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              new IconButton(
                                color: Colors.blue,
                                onPressed: () {},
                                icon: new Icon(
                                  FontAwesomeIcons.facebookF,
                                ),
                              ),
                              new IconButton(
                                color: Colors.red,
                                onPressed: () {},
                                icon: new Icon(
                                  FontAwesomeIcons.googlePlusG,
                                ),
                              ),
                            ],
                          ),
                        ),
                        new FlatButton(
                            onPressed: () {},
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Text('Novo por aqui?'),
                                new SizedBox(width: mediaQuery * 3.0),
                                new Text(
                                  'Registre-se',
                                  style: new TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

///Container
///Stack
///Center
///Coluna
