import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    /*
    * Today learn: Layout Widgets
    */

    // const ic = Icon(
    //   Icons.center_focus_strong,
    //   color: Colors.red,
    //   size: 100.0,
    // );

    /*
    * position widget
    */

    // const center = Center(child: ic);
    // const align = Align(
    //   alignment: Alignment.bottomCenter,
    //   child: ic,
    // );
    const double size = 40.0;

    const icon1 = Icon(Icons.looks_one, color: Colors.red, size: size);
    // const icon2 = Icon(Icons.looks_two, color: Colors.red, size: size);
    // const icon3 = Icon(Icons.looks_3, color: Colors.red, size: size);

    /*
    * row widget
    */
    // const myRowContect = Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   // crossAxisAlignment: CrossAxisAlignment.stretch,
    //   children: [icon1, icon2, icon3],
    // );

    /*
    * column widget
    */

    // const myColContect = Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: const [icon1, icon2, icon3],
    // );

    /*
;    * containter widget
    */
    var myDecoration = BoxDecoration(
        color: Colors.green,
        border: Border.all(color: Colors.blueAccent, width: 10),
        borderRadius: BorderRadius.circular(12));

    var myContainter = Container(
      decoration: myDecoration,
      transform: Matrix4.rotationZ(0.10),
      // padding: const EdgeInsets.all(150),
      // margin: const EdgeInsets.all(150),
      child: icon1,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Discovers'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: myContainter,
    );
  }
}
