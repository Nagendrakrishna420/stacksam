import 'package:flutter/material.dart';

//import 'package:task/new2.dart';
class MyNew extends StatefulWidget {
  const MyNew({super.key});

  @override
  State<MyNew> createState() => _MyNewState();
}

class _MyNewState extends State<MyNew> {
  final _mykey=GlobalKey<FormState>();
  final _email=TextEditingController();
  final _pass=TextEditingController();
  var obscureText=true;
  double slider=1;
  //bool passwordVisible=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _mykey,
        child: Column(children: [

          SizedBox(height: 70,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  hintText: "EMAIL",
                  prefixIcon: Icon(Icons.email_outlined,color: Colors.black45,)
              ),
              controller:_email ,
              validator: (val)=> val!.isEmpty ? "ENTER email adress" :null,
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              obscureText: obscureText,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                labelText: "PASSWORD",
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                ),

                prefixIcon: Icon(Icons.key_rounded),
                suffixIcon:IconButton(
                  onPressed:(){
                    setState(() {
                      obscureText=!obscureText;

                    });

                  } ,
                  icon: Icon(obscureText ? Icons.visibility:Icons.visibility_off),
                ),
              ),
              controller: _pass,
              validator: (val)=> val!.isEmpty ? "ENTER you password" :null,
              // controller: _pass,
              // validator: (val)=> val!.isEmpty ? "ENTER you password" :null,
            ),

          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            if(_mykey.currentState!.validate()){

            }
          }, child: Text("SUBIT")),
          SizedBox(height: 20,),
          Slider(value:slider, onChanged:(val){
            setState(() {
              slider=val;
            });
          },label: "${slider.toInt()}",

            min: 1,
            max: 20,
            divisions: 10,
            activeColor: Colors.orange.shade900,
            inactiveColor: Colors.green,
            thumbColor:Colors.white ,
          ),Text("${slider.toInt()}",style: TextStyle(fontSize: 20),),
          SizedBox(height: 20,),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.red,
          ),

        ],),
      ),
    );
  }
}