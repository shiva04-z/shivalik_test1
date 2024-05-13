import 'package:flutter/material.dart';

class FootWear extends StatefulWidget {
  const FootWear({super.key});


  @override
  State<FootWear> createState() => _FootWearState();
}

class _FootWearState extends State<FootWear> {
  var dropValue="Footwear";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,centerTitle: true,actions: const [Icon(Icons.menu,color: Colors.green,),Padding(
        padding: EdgeInsets.only(left:32,right: 15),
        child: Icon(Icons.search,),
      )],
        title: DropdownButton(
          icon: const Icon(Icons.arrow_downward),
          elevation: 5,
          autofocus: true,
          dropdownColor: Colors.white,
          value: dropValue,
          items: ['Footwear','Clothes','Watches','Sunglasses'].map((e) {
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
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                Card(
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  margin: EdgeInsets.all(8),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
          
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Row(
          
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [Text(" Sale  .",style: TextStyle(backgroundColor: Colors.green)),Padding(
                        padding: EdgeInsets.only(left:72.0),
                        child: Icon(Icons.favorite_border),
                      )],
                    ),
          
                      Center(child: Image(image: AssetImage("asset/img_5.png"),height: 150,width: 150,fit: BoxFit.fill,)),
          
                      Text("\$ 38.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                      Text("kdhsdbhebhfdeh\nfhbebhfhdhfeh",style: TextStyle(fontSize:12),softWrap: true,),
                    ]
                      ,),
                  ),
                ),
                Card(
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  margin: EdgeInsets.all(8),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
          
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Row(
          
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Text("   ",style: TextStyle(backgroundColor: Colors.green)),Padding(
                          padding: EdgeInsets.only(left:118.0),
                          child: Icon(Icons.favorite_border),
                        )],
                      ),
          
                        Center(child: Image(image: AssetImage("asset/img_6.png"),height: 150,width: 150,fit: BoxFit.fill,)),
          
                        Text("\$ 42.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                        Text("kdhsdbhebhfdeh\nfhbebhfhdhfeh",style: TextStyle(fontSize:12),softWrap: true,),
                      ]
          
                      ,),
                  ),
                )
              ],),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    color: Colors.white,
                    surfaceTintColor: Colors.white,
                    margin: EdgeInsets.all(8),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
          
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Row(
          
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Text(" Sale  .",style: TextStyle(backgroundColor: Colors.green)),Padding(
                            padding: EdgeInsets.only(left:72.0),
                            child: Icon(Icons.favorite_border),
                          )],
                        ),
          
                          Center(child: Image(image: AssetImage("asset/img_7.png"),height: 150,width: 150,fit: BoxFit.fill,)),
          
                          Text("\$ 49.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                          Text("kdhsdbhebhfdeh\nfhbebhfhdhfeh",style: TextStyle(fontSize:12),softWrap: true,),
                        ]
          
                        ,),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    surfaceTintColor: Colors.white,
                    margin: EdgeInsets.all(8),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
          
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Row(
          
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Text(" Sale  .",style: TextStyle(backgroundColor: Colors.green)),Padding(
                            padding: EdgeInsets.only(left:72.0),
                            child: Icon(Icons.favorite_border),
                          )],
                        ),
          
                          Center(child: Image(image: AssetImage("asset/img_9.png"),height: 150,width: 150,fit: BoxFit.fill,)),
          
                          Text("\$ 78.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                          Text("kdhsdbhebhfdeh\nfhbebhfhdhfeh",style: TextStyle(fontSize:12),softWrap: true,),
                        ]
          
                        ,),
                    ),
                  )
                ],),
              Row(
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  Card(
                    color: Colors.white,
                    surfaceTintColor: Colors.white,
                    margin: EdgeInsets.all(8),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
          
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Row(
          
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Text(" Sale  .",style: TextStyle(backgroundColor: Colors.green)),Padding(
                            padding: EdgeInsets.only(left:72.0),
                            child: Icon(Icons.favorite_border),
                          )],
                        ),
          
                          Center(child: Image(image: AssetImage("asset/img_10.png"),height: 150,width: 150,fit: BoxFit.fill,)),
          
                          Text("\$ 52.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                          Text("kdhsdbhebhfdeh\nfhbebhfhdhfeh",style: TextStyle(fontSize:12),softWrap: true,),
                        ]
           
                        ,),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    surfaceTintColor: Colors.white,
                    margin: EdgeInsets.all(8),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
          
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Row(
          
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Text(" Sale  .",style: TextStyle(backgroundColor: Colors.green)),Padding(
                            padding: EdgeInsets.only(left:72.0),
                            child: Icon(Icons.favorite_border),
                          )],
                        ),
          
                          Center(child: Image(image: AssetImage("asset/img_8.png"),height: 150,width: 150,fit: BoxFit.fill,)),
          
                          Text("\$ 48.0",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                          Text("kdhsdbhebhfdeh\nfhbebhfhdhfeh",style: TextStyle(fontSize:12),softWrap: true,),
                        ]
          
                        ,),
                    ),
                  )
                ],)
            ],
          ),
        ),
      ),
    );

  }
}

