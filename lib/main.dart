import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:js' as js;

void main() {
  runApp(const BladeTeckApp());
}

class BladeTeckApp extends StatelessWidget {
  const BladeTeckApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/store": (context) => StorePage(),
        "/designs": (context) => DesignPage(),
      },
      title: 'BladeTeck',
      theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          accentColor: const Color.fromARGB(255, 66, 211, 255)),
      home: const BladeTeck(),
    );
  }
}

class BladeTeck extends StatefulWidget {
  const BladeTeck({super.key});

  @override
  State<BladeTeck> createState() => _BladeTeckState();
}

class _BladeTeckState extends State<BladeTeck> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 66, 211, 255),
        child: DrawerHeader(child: DrawerColumn()),
      ),
      appBar: AppBar(
        leading: TextButton(
          child: SvgPicture.asset("BladeTeck.svg"),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        title: Text("BladeTek"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset("banner.webp"),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            const Text(
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
              'there once was a place with alot of metal, then there were neefs.\nall the neef came to one land and made the first artifishl neef\n the neef were all heppy and jumping alot\n jumping into trees, onto leafs, trying to see that one thing',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class StorePage extends StatelessWidget {
  StorePage({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 66, 211, 255),
        child: DrawerHeader(child: DrawerColumn()),
      ),
      appBar: AppBar(
        leading: TextButton(
          child: SvgPicture.asset("BladeTeck.svg"),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        title: Text("Store"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Card(
              margin: EdgeInsets.fromLTRB(80.0, 10.0, 80.0, 10.0),
              color: Colors.blueGrey,
              child: Padding(
                padding: EdgeInsets.all(40.0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset("blad_tek_propa.png", height: 50.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                  ),
                  Text("\$5",
                      style: TextStyle(fontSize: 20.0, fontFamily: "Noto Sans"))
                ]),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class DesignPage extends StatelessWidget {
  DesignPage({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 66, 211, 255),
        child: DrawerHeader(child: DrawerColumn()),
      ),
      appBar: AppBar(
        leading: TextButton(
          child: SvgPicture.asset("BladeTeck.svg"),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        title: Text("Store"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[Text("neef designs here")],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class DrawerColumn extends StatelessWidget {
  const DrawerColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => {Navigator.pushNamed(context, '/')} /*navigate to home*/,
          child: SvgPicture.asset(
            "BladeTeck.svg",
            height: 250,
          ),
        ),
        const Text(
          "git dem\nslees·rz",
          style:
              TextStyle(fontWeight: FontWeight.bold, fontFamily: "Noto Sans"),
        ),
        const Padding(
          padding: EdgeInsets.all(50.0),
        ),
        Column(
          children: [
            InkWell(
              onTap: () => {Navigator.pushNamed(context, '/store')},
              child: Card(
                color: Colors.blueGrey,
                child: Row(children: const [
                  Icon(Icons.store),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 80.0, right: 0.0, top: 20.0, bottom: 20.0),
                    child: Text("- - store - -"),
                  )
                ]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
            ),
            InkWell(
              onTap: () => {
                js.context
                    .callMethod('open', ['https://www.youtube.com/@blob1019'])
              },
              child: Card(
                color: Colors.blueGrey,
                child: Row(children: const [
                  Icon(Icons.store),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 80.0, right: 0.0, top: 20.0, bottom: 20.0),
                    child: Text("- - videos - -"),
                  )
                ]),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
            ),
            InkWell(
              onTap: () => {Navigator.pushNamed(context, '/designs')},
              child: Card(
                color: Colors.blueGrey,
                child: Row(
                  children: const [
                    Icon(Icons.store),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 80.0, right: 0.0, top: 20.0, bottom: 20.0),
                      child: Text("- - designs - -"),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
