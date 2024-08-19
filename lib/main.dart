import 'package:demo/mapPage.dart';
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

class _MyHomePageState extends State<MyHomePage>
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

                  Center(
                    child: Builder(
                      builder: (context) => ElevatedButton(
                          onPressed: (){Scaffold.of(context).openDrawer();},
                          child: Text('open drawer'),
                        ),

                    ),
                  ),

                    //curve design widget
                  Hero(
                    tag: 'A1',
                    child: Container(
                      width: double.infinity,
                      height: 500,

                          //color: Colors.blue,
                        decoration:const BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.only(bottomLeft:Radius.circular(50),bottomRight:Radius.circular(50))
                        ),

                    ),
                  ),



                  // 1st circular widget
                Positioned(
                    top: 300,
                    left: 40,
                    child: Container(
                      width: 150,
                      height: 150,


                      decoration: BoxDecoration(
                          color: Colors.white60,
                          border: Border.all(
                              color: Colors.white,
                              width: 5
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(100))

                      ),


                    )
                ),
                // const Positioned(
                //     top: 500,
                //     left: 100,
                //     child: Text('67%')
                // ),



                  //2nd circular widget
                Positioned(
                    top: 300,
                    left: 220,
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          color: Colors.white60,
                          border: Border.all(
                              color: Colors.white,
                              width: 5
                          ),
                          borderRadius: const BorderRadius.all(Radius.circular(100))


                      ),
                    )
                ),



                  //images
                Positioned(
                  top: 50,
                  left:50,

                  child: SizedBox(
                    width: 300,
                    height: 220,
                    child: Image.asset('assets/img/EV2.png', fit: BoxFit.fill,),
                  ),
                ),


                  //left button
                  Positioned(
                    top: 550,
                    left: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 200),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          backgroundColor: Colors.blueAccent,
                          foregroundColor: Colors.white,


                      ),
                      onPressed:(){
                        //action trigger
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const mapPage(title: 'mapPage')));
                      },
                      child: const Text('Find Station',
                        style: TextStyle(fontSize: 20),),



                    ),
                  ),



                  //right button
                  Positioned(
                    top: 550,
                    left: 220,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(150, 200),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,


                      ),
                      onPressed:(){
                        //action trigger
                      },
                      child: const Text('Book Sloat',
                        style: TextStyle(fontSize: 20),),



                    ),
                  ),

            ],
          ),),

              //Padding(padding: const EdgeInsets.all)






            ],

          ),



          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_rounded),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.location_pin),label: 'Map'),
              BottomNavigationBarItem(icon: Icon(Icons.person_rounded),label: 'Profile'),
            ],

          ),

      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('About us'),
              onTap: (){},
            ),

            ListTile(
              title: Text('Contact us'),
              onTap: (){},
            )
          ],
        ),
      ),

    );
  }
}
