import 'package:flutter/material.dart';
import 'package:punta_carena/blocs/login_bloc.dart';
import 'package:punta_carena/widgets/input_field.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _loginBloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Icon(
                    Icons.business,
                    color: Colors.blueGrey,
                    size: 170,
                  ),
                  InputField(
                      icon: Icons.person_outline,
                      hint: "Usuário",
                      hide: false,
                      stream: _loginBloc.outEmail,
                      onChanged: _loginBloc.changeEmail,
                  ),
                  InputField(
                      icon: Icons.lock_outline,
                      hint: "Senha",
                      hide: true,
                      stream: _loginBloc.outPassword,
                      onChanged: _loginBloc.changePassword,
                  ),
                  SizedBox(height: 32,),
                  SizedBox(
                      height: 50,
                      child: RaisedButton(
                        color: Colors.blueGrey,
                        child: Text("Entrar"),
                        onPressed: (){},
                        textColor: Colors.white,
                      )
                  )
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
