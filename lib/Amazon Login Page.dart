import 'package:flutter/material.dart';
import 'package:subash/Amazon.dart';



class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _formGlobalKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:

        Form(key: _formGlobalKey,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.horizontal(),
              image: DecorationImage(
                  image: AssetImage("assets/img/amazon.jpg"),
                  fit: BoxFit.fill
              ),
            ),

            child: Column(
              children: [SizedBox(height: 100,),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: CircleAvatar(backgroundImage: AssetImage("assets/img/amazonlogo.jpg"),radius: 100,),
                ),
                Column(
                  children: [SizedBox(height: 20,),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,fillColor: Colors.white,
                          icon: Icon(Icons.person),
                          labelText: 'Email(phone for mobile account)',
                          border: OutlineInputBorder(),
                        ),
                         cursorColor: Colors.red,
                         validator: (value) {
                           if (value==null ||
                               !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                   .hasMatch(value)) {
                             return 'Enter a valid email!';
                           }
                           return null;
                         },
                       ),
                     ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(filled: true,
                          fillColor: Colors.white,
                          icon: Icon(Icons.password),
                          labelText: 'Amazon password',
                          border: OutlineInputBorder(),
                        ),
                        cursorColor: Colors.red,
                        validator: (value) {
                          if (value == null ||value.length<7)
                          {
                            return 'Enter a valid password!';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 30,),
                    ElevatedButton(onPressed: (){

                      if(_formGlobalKey.currentState!.validate())
                      {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Done")));
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const amaz()),
                        );
                      }

                    }, child: Text("Sign in",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)
                    ),
                    ),
                  ],

                ),
              ],

            ),
          ),
        ),

    );
  }
}
