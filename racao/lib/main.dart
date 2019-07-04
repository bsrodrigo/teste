import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
    )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pet Alimentador"),
        backgroundColor: Colors.blue[900],
        centerTitle: true,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[         
          Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: Icon(Icons.pets, size: 150, color: Colors.orange[700],),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildAlerta(),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("HISTÓRICO"),
              buildLista(), 
            ],
          ),     
        ],
      )      
    );   
  }

}
    
      


Widget buildAlerta(){
  return Card(
    color: Colors.orange[600],
    child: Column(          
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const ListTile(
          leading: Icon(Icons.album, color: Colors.black,),
          title: Text('The Enchanted Nightingale'),
          subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.',),
        ),
        ButtonTheme.bar(
          child: ButtonBar(
            children: <Widget>[
              FlatButton(
                color: Colors.black12,
                textColor: Colors.black,
                child: const Text('VISUALIZADO!'),
                onPressed: () {/* ... */},
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildLista(){
  return  Container(
                height: 300.0,
                child:ListView(              
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.access_time),
                      ),
                      title: Text('Testando'),
                      subtitle: Text('Testando teste teste')
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.access_time),
                      ),
                      title: Text('Testando'),
                      subtitle: Text('Testando teste teste')
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.access_time),
                      ),
                      title: Text('Testando'),
                      subtitle: Text('Testando teste teste')
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.access_time),
                      ),
                      title: Text('Testando'),
                      subtitle: Text('Testando teste teste')
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.access_time),
                      ),
                      title: Text('Testando'),
                      subtitle: Text('Testando teste teste')
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.access_time),
                      ),
                      title: Text('Testando'),
                      subtitle: Text('Testando teste teste')
                    ),
                  ],
                ),
              );
}

