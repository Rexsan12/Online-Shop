import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
   
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Rexshan'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double rate = 0;
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
      /* leading: IconButton(
         icon: Icon(Icons.menu),
         onPressed: (){
           print('Icon button print');
         },

       ),*/
        title: Text(widget.title),
     /*   actions: <Widget>[
          IconButton(icon: Icon(Icons.search),
          onPressed: (){

          },
          ),
          IconButton(icon: Icon(Icons.more_vert),
          onPressed: (){},
          )
        ],*/

flexibleSpace: SafeArea(
         child:Icon(
         Icons.camera,
         color: Colors.white,
         size:55.0,
         ),        
          ),
          bottom: PreferredSize(
            child: Container(
              color: Colors.green,
              height: 75.0,
              width: double.infinity,

          ),
          preferredSize: Size.fromHeight(75.0),
          ),
      ),
      body: Center(
           child: Slider(
              value: rate,
             onChanged: (newRate){
                setState((){
               rate = newRate;
              });
           },
           min: 0,
        max: 100,
        divisions: 5,
        label: "$rate",
      ),
      ),
      
    


     floatingActionButton: FloatingActionButton(
       elevation: 10.0,
       child: Icon(Icons.add),
       onPressed: (){
         print('Click the tutorial');
       },
     ), 
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    drawer: Drawer(elevation: 16.0,
    child: Column(children: <Widget>[
      UserAccountsDrawerHeader(
        accountName: Text('Rexshan'),
         accountEmail: Text('abc@gmail.com'),
         currentAccountPicture: CircleAvatar(backgroundColor: Colors.white,
         child: Text('xyz'),
         ),
    ),
    ListTile(
      title: Text('All Inbox'),
      leading: Icon(Icons.mail),
    ),
    Divider(
      height: 0.1,
    ),
     ListTile(
      title: Text('All Primary'),
      leading: Icon(Icons.inbox),
    ),
    Divider(
      height: 0.1,
    ),
    ListTile(
      title: Text('Social'),
      leading: Icon(Icons.people),
    ),
    Divider(
      height: 0.1,
    ),
    ListTile(
      title: Text('Promotion'),
      leading: Icon(Icons.local_offer),
    ),
    Divider(
      height: 0.1,
    ),
    ],
    ),
    ),
  persistentFooterButtons: <Widget> [
    RaisedButton(
      elevation: 1.0,
      onPressed: (){
        print('click');
      },
      color: Colors.red,
      child: Icon(Icons.add)
    ),
      RaisedButton(
      elevation: 1.0,
      onPressed: (){
        print('clear');
      },
      color: Colors.green,
      child: Icon(Icons.clear)
    )
  ],
  bottomNavigationBar: BottomNavigationBar(
    currentIndex: 1,
    fixedColor: Colors.deepOrange,
    items:[
      BottomNavigationBarItem(
        title: Text('Home'),
        icon: Icon(Icons.home)
      ),
       BottomNavigationBarItem(
        title: Text('Call'),
        icon: Icon(Icons.call)
      ),
       BottomNavigationBarItem(
        title: Text('Chat'),
        icon: Icon(Icons.chat)
      ),
    ],
    onTap: (int index){
      print(index.toString());
    },
    ),
    endDrawer: Drawer(elevation: 16.0,
    child: Column(children: <Widget>[
      UserAccountsDrawerHeader(
        accountName: Text('Rexshan'),
         accountEmail: Text('abc@gmail.com'),
         currentAccountPicture: CircleAvatar(backgroundColor: Colors.white,
         child: Text('xyz'),
         ),
    ),
    ListTile(
      title: Text('All Inbox'),
      leading: Icon(Icons.mail),
    ),
    Divider(
      height: 0.1,
    ),
     ListTile(
      title: Text('All Primary'),
      leading: Icon(Icons.inbox),
    ),
    Divider(
      height: 0.1,
    ),
    ListTile(
      title: Text('Social'),
      leading: Icon(Icons.people),
    ),
    Divider(
      height: 0.1,
    ),
    ListTile(
      title: Text('Promotion'),
      leading: Icon(Icons.local_offer),
    ),
    Divider(
      height: 0.1,
    ),
    ],
    ),
    ),
    backgroundColor: Colors.yellow,
  
    
    
    );
  }
}
