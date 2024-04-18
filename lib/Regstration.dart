import 'package:flutter/material.dart';


void main() => runApp(textdemo());

class textdemo extends StatelessWidget {
  var namecontroller=TextEditingController();
  var emailcontroller=TextEditingController();
  var passwordcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Registration Form'),
          centerTitle: true,
          backgroundColor: Colors.black26,
        ),
        body: Container(
          margin: EdgeInsets.all(10.0),
          child:  Column(
            children: [
              TextField(
                controller: namecontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Input the Name',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Input the Email',
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: passwordcontroller,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Input the Password',
                ),
              ),
              SizedBox(height: 10),

              ElevatedButton(onPressed: (){
                var name=namecontroller.text.toString();
                var email=emailcontroller.text.toString();
                var password=passwordcontroller.text.toString();

                var cel=double.parse(name);
                var fel=(cel*9/5)+32;
                print("Name="+name+"\n Email="+email+"\n Pass="+password);
                print(fel);

              }, child: Text('Registration Here'))


            ],),
        ),
      ),
    );
  }
}
