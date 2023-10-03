// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a blue toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

// ignore_for_file: prefer_const_constructors

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
