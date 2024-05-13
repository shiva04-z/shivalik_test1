import 'package:flutter/material.dart';
import 'package:shivalik_test1/footwear.dart';
import 'package:shivalik_test1/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
    static const List<Widget> _widgetOptions = <Widget>[
    LandingPage(),
    footwear(),
    Gift(),
    ProfileScreen()

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor:Colors.blueGrey ,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard),
              label: 'Gift',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle),
              label: 'User',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      backgroundColor: Colors.white,
      body:IndexedStack(index: _selectedIndex,children: _widgetOptions,)
      );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
          padding:  const EdgeInsets.only(left:15,right: 10,top: 25),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                    padding:  EdgeInsets.only(top:12.0,bottom: 22),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("Hi, Divan"),Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),)],)
                        ,Icon(Icons.search)],)
                ),
                Card(
                  elevation: 5,

                  borderOnForeground: true,
                  shape: const RoundedRectangleBorder(side: BorderSide(color: Colors.black26),borderRadius: BorderRadius.all(Radius.elliptical(12, 12))),
                  margin: const EdgeInsets.all(2),
                  child: Stack(children: [const Image(image: AssetImage("asset/img_3.png",),fit:BoxFit.fill ,height: 400,width: 400,),Padding(
                    padding: const EdgeInsets.only(top:225,left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("50% off on sunglasses",style: TextStyle(fontSize: 45,color: Colors.white,fontWeight: FontWeight.bold),),
                        TextButton(onPressed: (){}, child: const Text("Discover sunglasses >",style: TextStyle(color: Colors.white),))
                      ],
                    ),
                  )]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Card(
                    shape: const RoundedRectangleBorder(side: BorderSide(color: Colors.black26),borderRadius: BorderRadius.all(Radius.elliptical(12, 12))),
                    elevation: 5,
                    borderOnForeground: true,
                    margin: const EdgeInsets.all(2),
                    child: Stack(children: [const Image(image: AssetImage("asset/img_4.png",),fit:BoxFit.fill ,height: 200,width: 400,),Padding(
                      padding: const EdgeInsets.only(top:25,left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Summer Sale",style: TextStyle(fontSize: 45,color: Colors.white,fontWeight: FontWeight.bold),),
                          const Text("24 items included\n",style: TextStyle(color: Colors.white),),
                          TextButton(onPressed: (){}, child: const Text("Explore >",style: TextStyle(color: Colors.white),))
                        ],
                      ),
                    )]),
                  ),
                )

              ]
          )),
    );
  }
}

class Gift extends StatelessWidget {
  const Gift({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


