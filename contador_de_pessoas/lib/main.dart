import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "Contador de Pessoas",
      home: Home()      
    )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _infoText = "Pode Entrar!";
  int _people = 0;

  void _changePeople(int delta){
    setState(() {
       _people += delta;

       if(delta == 1){
        _infoText = "Pode Entrar!"; 
       }else{
        _infoText = "Até Logo!"; 
       }

       if(_people < 0){
        _infoText = "Mundo invetido?!"; 
       }else if(_people == 0){
          _infoText = "Restaurante vazio!"; 
       }else if(_people >= 10){
          _infoText = "Restaurante Lotado!"; 
       }

    });
  }

  @override
  Widget build(BuildContext context) {
    return 
      Stack(
        children: <Widget>[
          Image.asset(
            "images/bg.jpg", 
            fit: BoxFit.cover,
            height: 2000.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Pessoas: $_people", 
                style: 
                  TextStyle(
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 8.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ],
                    color: Colors.white, 
                    fontWeight: FontWeight.bold, 
                    decoration: TextDecoration.none),
                
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "+1", 
                        style:  TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 3.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 8.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ],
                          fontSize: 40.0, 
                          color: Colors.white)
                      ),
                      onPressed: () {
                        _changePeople(1);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text(
                        "-1", 
                        style:  TextStyle(
                          shadows: <Shadow>[
                            Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 3.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            Shadow(
                              offset: Offset(1.0, 1.0),
                              blurRadius: 8.0,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ],
                          fontSize: 40.0, 
                          color: Colors.white)
                      ),
                      onPressed: () {
                        _changePeople(-1);
                      },
                    ),
                  ),
                ],
              ),

              Text("$_infoText", 
                style: TextStyle(
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 8.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ],
                  color: Colors.white, 
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0,
                  decoration: TextDecoration.none
                )
              )
            ],
          )
        ],
      );
  }
}