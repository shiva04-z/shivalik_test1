import 'package:flutter/material.dart';
import 'package:shivalik_test1/homepage.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();

}

class _SignInPageState extends State<SignInPage> {
  GlobalKey<FormState> loginKey= GlobalKey<FormState>();

  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:15,right: 10,top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:12.0,bottom: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [const Image(image:AssetImage("asset/img_1.png"),height: 55,),TextButton(onPressed:(){}, child: const Text("Sign In",style: TextStyle(color: Colors.green,fontSize: 18,),))],),
              ),
              const Padding(
                padding: EdgeInsets.only(top:12.0,),
                child: Text("Welcome Back,",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              const Text("Sign in to continue",style: TextStyle(fontSize: 14),),
              Form(
                key: loginKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:32.0,bottom: 12),
                      child: TextFormField(decoration: const InputDecoration(label: Text("Username"),prefixIcon: Icon(Icons.supervised_user_circle_rounded)),
                        controller: controller1
                          ,validator: (value){
                          if(value!.isEmpty){
                            return 'Please enter Username';
                          }
                          return null;
                        },),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:12.0,bottom: 12),
                      child: TextFormField(decoration: const InputDecoration(label: Text("Email/Phone"),prefixIcon: Icon(Icons.mail_outline_outlined)),
                          controller: controller2
                          ,validator: (value){
                            if(value!.isEmpty){
                              return 'Please enter Email';
                            }
                            return null;
                          }
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:12.0,bottom: 32),
                      child: TextFormField(decoration: const InputDecoration(label: Text("Password"),prefixIcon: Icon(Icons.lock)),
                        validator: (value){
                          if(value!.isEmpty){
                            return 'please enter password';
                          }
                          else if(value.length<6){
                            return 'password should be 6character ';
                          }
                          return null;
                        },
                      ),
        
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top:12.0,bottom: 12),
                      child: SizedBox(height: 45,width:320,child: ElevatedButton(onPressed: ()
                      {
                        var isValid = loginKey.currentState!.validate();
                        if(!isValid){return;}
                        else
                          {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomePage()));
                          }
                        }
                          ,style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero),side:BorderSide(width: 1) )), child: const Text("Signup",style: TextStyle(color: Colors.white),))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:12.0,bottom: 12),
                      child: SizedBox(height: 45,width:320,child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(elevation: 0,backgroundColor: Colors.white,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero),side:BorderSide(width: 1,color: Colors.grey), )), child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.facebook,color: Colors.black,),
                          Text("Login With Facebook",style: TextStyle(color: Colors.black),),
                        ],
                      ))),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:12.0,bottom: 32),
                      child: SizedBox(height: 45,width:320,child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(elevation: 0,backgroundColor: Colors.white,shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero),side:BorderSide(width: 1,color: Colors.grey) )), child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image(image:AssetImage("asset/img_2.png"),height: 25,),
                          Text("Login With Instagram",style: TextStyle(color: Colors.black),),
                        ],
                      ))),
                    ),
                  ],
                ),
              ),
        
               Center(
                 child: SizedBox(
                   width: 260,
                   child: Column(
                     children: [
                       const Center(child: Text("By Creating your Account you agree to" )),
                       SizedBox(
                         width: 177,
                         height: 35,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text("our"),TextButton(onPressed: (){}, child: const Text("Terms & Conditions",style: TextStyle(decoration: TextDecoration.underline),))
                          ],
                                     ),
                       ),
                     ],
                   ),
                 ),
               )
        
            ],
          ),
        ),
      ),
    );
  }
}
