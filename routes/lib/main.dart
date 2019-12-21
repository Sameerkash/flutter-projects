import 'package:flutter/material.dart';
import 'package:routes/second_page.dart';
import 'package:routes/third_page.dart';
import 'package:sailor/sailor.dart';

import 'initial_page.dart';

void main() {
  Routes.createRoute();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: InitialPage(),
      onGenerateRoute: Routes.sailor.generator(),
      navigatorKey: Routes.sailor.navigatorKey,
    );
  }
}

class Routes {
  static final sailor = Sailor();

  static void createRoute() {
    sailor.addRoutes([
      SailorRoute(
        name: '/initial',
        builder: (context, args, params) {
          return InitialPage();
        },
      ),
      SailorRoute(
          name: '/second',
          builder: (context, args, params) {
            return SecondPage(
              price: params.param<double>('price'),
              productName: params.param('productName'),
            );
          },
          params: [
            SailorParam(name: 'productName', isRequired: true),
            SailorParam(name: 'price', defaultValue: 100.0)
          ]),
      SailorRoute(
        name: '/third',
        builder: (context, args, params) {
          return ThirdPage(args);
        },
        defaultTransitions: [
          SailorTransition.slide_from_left,
          SailorTransition.zoom_in,
          SailorTransition.fade_in
        ],
        defaultTransitionCurve: Curves.easeInCubic,
      ),
    ]);
  }
}

// import 'package:flutter/material.dart';
// import 'package:routes/route_generator.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "flutter navigation",
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//      initialRoute: '/',
//      onGenerateRoute: RouteGenerator.generateRoute,
//     );
//   }
// }

// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Routing app"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Text(
//               "first page ",
//               style: TextStyle(fontSize: 50),
//             ),
//             RaisedButton(
//               onPressed: () {
//                 Navigator.of(context).pushNamed('/second',arguments: "hello there ");
//               },
//               child: Text("go to second"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SecondPage extends StatelessWidget {
//   // This is a String for the sake of an example.
//   // You can use any type you want.
//   final String data;

//   SecondPage({
//     Key key,
//     @required this.data,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Routing App'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Text(
//               'Second Page',
//               style: TextStyle(fontSize: 50),
//             ),
//             Text(
//               data,
//               style: TextStyle(fontSize: 20),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
