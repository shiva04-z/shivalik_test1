
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var dropValue="Expire Month";
  var dropValue2="Expire Year";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          children: [Text("Account /",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),Text("Payment",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.green)),]
          ,),actions: const [Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.close),
          )]
        
        ,),

      body:
       SingleChildScrollView(

         child: Padding(
           padding: const EdgeInsets.all(22.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 42.0,top:23,bottom: 23),
                child: Row(
                children: [Card(child: Image(image: AssetImage("asset/img_11.png",),fit:BoxFit.fill ,height: 200,width: 300,)),
                  Card(child: Image(image: AssetImage("asset/img_12.png",),fit:BoxFit.fill ,height: 200,width: 300,))
                ],
                      ),
              ),
                 )
              ,
              const Text("Add new card ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
              TextFormField(decoration: const InputDecoration(label: Text("Cardholder Name") ),),
              TextFormField(decoration: const InputDecoration(label: Text("Card Number") ),),
              Padding(
                padding: const EdgeInsets.only(top:32.0,right: 48,left:16,bottom: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DropdownButton(
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 5,
                      autofocus: true,
                      dropdownColor: Colors.white,
                      value: dropValue,
                      items: ['Expire Month','Jan','Feb','Mar'].map((e) {
                        return DropdownMenuItem(
                            value: e,
                            child: Row(
                                children :[
                                  Text(e) ]));
                      }).toList(),
                      onChanged: (value){
                        setState(() {
                          dropValue=value!;
                        });
                      },
                      isDense: true,
                    ),
                    DropdownButton(
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 5,
                      autofocus: true,
                      dropdownColor: Colors.white,
                      value: dropValue2,
                      items: ['Expire Year','2024','2025','Other'].map((e) {
                        return DropdownMenuItem(
                            value: e,
                            child: Row(
                                children :[
                                  Text(e) ]));
                      }).toList(),
                      onChanged: (value){
                        setState(() {
                          dropValue2=value!;
                        });
                      },
                      isDense: true,
                    ),


                  ],
                ),
              ),
              ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(elevation: 0,backgroundColor: Colors.white,shape: const RoundedRectangleBorder(side: BorderSide(color: Colors.green))), child: const Text("Add now",style: TextStyle(color: Colors.green)))




            ]),
         ),
       )
      
    );
  }
}
