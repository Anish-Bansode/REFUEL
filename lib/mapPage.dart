import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const mapPage(title: 'MapPage'),
    );
  }
}

class mapPage extends StatefulWidget {
  const mapPage({super.key, required this.title});



  final String title;

  @override
  State<mapPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<mapPage>
{

  @override
  Widget build(BuildContext context)
  {

    return Scaffold(
      // appBar: AppBar(
      //
      //   //title: Text(widget.title),
      // ),
      body:
      Column(
        children: <Widget>[
          Expanded(child: Stack(

            children:<Widget> [

              //curve design widget
              Hero(
                
                tag: 'A1',
                child: Container(
                  width: double.infinity,
                  height: 150,
                
                  //color: Colors.blue,
                  decoration:const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(50),bottomRight:Radius.circular(50))
                  ),
                
                ),
              ),








            ],
          ),),

          //Padding(padding: const EdgeInsets.all)






        ],

      ),



      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.location_pin),label: 'Map'),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded),label: 'Profile'),
        ],

      ),



    );
  }
}
