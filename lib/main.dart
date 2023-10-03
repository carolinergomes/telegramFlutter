import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.more_vert),
          centerTitle: true,
          title: Text("Chat"),
          actions: const [
            Icon(Icons.search),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.black,
          child: Icon(Icons.create_sharp, size: 25),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 2,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: "Contatos",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: "Ligações",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Configurações",
            ),
          ],
        ),
        body: ListView(
          children: [
            ListTile(
                leading: Telegram(),
                title: Row(
                  children: const [
                    Text("Telegram "),
                    Icon(Icons.verified_rounded, color: Colors.blue, size: 15),
                  ],
                ),
                subtitle: Text("Telegram foi atualizado para a versão 11"),
                trailing: Text("14:00"),
                onTap: () {}),
            Divider(),
            ListTile(
                leading: Perfil(),
                title: Text("Louise"),
                subtitle: Text("Oi!"),
                trailing: Column(
                  children: const <Widget>[
                    Text('13:50'),
                    Icon(
                      Icons.check,
                      color: Colors.blue,
                      size: 20,
                    ),
                  ],
                ),
                onTap: () {}),
            Divider(),
            ListTile(
                leading: Perfil1(),
                title: Text("Neidy"),
                subtitle: Row(
                  children: const [
                    Icon(Icons.video_camera_back_rounded,
                        color: Colors.grey, size: 15),
                    Text(" Video"),
                  ],
                ),
                trailing: Column(
                  children: const <Widget>[
                    Text('13:05'),
                    Icon(
                      Icons.check,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
                onTap: () {}),
            Divider(),
            ListTile(
                leading: Perfil2(),
                title: Row(
                  children: const [
                    Text("Mauro"),
                    // Icon(Icons.favorite, color: Colors.red, size: 15.5),
                  ],
                ),
                subtitle: Row(
                  children: const [
                    Icon(Icons.camera_alt, color: Colors.grey, size: 15),
                    Text(" Foto"),
                  ],
                ),
                trailing: Column(
                  children: const <Widget>[
                    Text('11:45'),
                    Icon(
                      Icons.check,
                      color: Colors.blue,
                      size: 20,
                    ),
                  ],
                ),
                onTap: () {}),
            Divider(),
            ListTile(
                leading: Perfil3(),
                title: Text("Viagem"),
                subtitle: Text("Margo: Quando?"),
                trailing: Column(
                  children: const <Widget>[
                    Text('09:07'),
                    Icon(
                      Icons.check,
                      color: Colors.blue,
                      size: 20,
                    ),
                  ],
                ),
                onTap: () {}),
            Divider(),
            ListTile(
                leading: Perfil4(),
                title: Text("Laura "),
                subtitle: Text("tudo bem."),
                trailing: Column(
                  children: const <Widget>[
                    Text('09:05'),
                    Icon(
                      Icons.check,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ],
                ),
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundImage: NetworkImage(
          "https://images.unsplash.com/photo-1654980148354-9c7daef97ecb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
    );
  }
}

class Perfil1 extends StatelessWidget {
  const Perfil1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundImage: NetworkImage(
          "https://images.unsplash.com/photo-1654895716780-b4664497420d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1887&q=80"),
    );
  }
}

class Perfil2 extends StatelessWidget {
  const Perfil2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundImage: NetworkImage(
          "https://images.unsplash.com/photo-1654795011872-e4d1c9741b1f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80"),
    );
  }
}

class Perfil3 extends StatelessWidget {
  const Perfil3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundImage: NetworkImage(
          "https://images.unsplash.com/photo-1653857329139-b233fbf7795a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
    );
  }
}

class Perfil4 extends StatelessWidget {
  const Perfil4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundImage: NetworkImage(
          "https://images.unsplash.com/photo-1617424967780-258f960dbb72?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
    );
  }
}

class Telegram extends StatelessWidget {
  const Telegram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundImage: NetworkImage(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS39_8EZwT3s6ZlXWxu-tW_ux0N6b4iXOdD1w&usqp=CAU"),
    );
  }
}
