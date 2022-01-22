import 'package:flutter/material.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  get indigo => null;

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Login Page",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Column(
                children: [
                  const Image(
                      image: AssetImage("assets/images/login.png"),
                      height: 100.0,
                      width: 100.0),
                  const Text("Login Form",
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 50.0,
                          fontFamily: "Lobster")),
                  TextFormField(
                    controller: username,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter your username',
                    ),
                  ),
                  TextFormField(
                    controller: password,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter your password',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 50.0),
                      ElevatedButton(
                          onPressed: () {
                            print(username.text + " " + password.text);
                          },
                          child: const Text("Submit"))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),
                child: Text(
                  'Welcome to My App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              ListTile(
                title: Text("All Mail Inboxes"),
                leading: Icon(Icons.mail),
              ),
              Divider(
                height: 0.2,
              ),
              ListTile(
                title: Text("Calander"),
                leading: Icon(Icons.calendar_today),
              ),
              ListTile(
                title: Text("Calculator"),
                leading: Icon(Icons.calculate),
              ),
              ListTile(
                title: Text("Games"),
                leading: Icon(Icons.games),
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),
                child: Text(
                  'Show Details',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              Divider(
                height: 0.2,
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.mail),
              ),
              ListTile(
                title: Text("Social"),
                leading: Icon(Icons.social_distance_sharp),
              ),
              ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
              ),
            ],
          ),
        ),
        persistentFooterButtons: <Widget>[
          RaisedButton(
            onPressed: () {},
            color: Colors.blue,
            child: const Icon(
              Icons.home_outlined,
              color: Colors.white,
            ),
          ),
          RaisedButton(
            onPressed: () {},
            color: Colors.green,
            child: const Icon(
              Icons.login,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
