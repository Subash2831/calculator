import 'package:flutter/material.dart';
import 'package:subash/Sliver%20Appbar.dart';

class syl extends StatefulWidget {
  const syl({super.key});

  @override
  State<syl> createState() => _sylState();
}

class _sylState extends State<syl> {
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
                image: AssetImage("assets/img/sy.png"),
                fit: BoxFit.fill
            ),
          ),

          child: SingleChildScrollView(
            child: Column(
              children: [SizedBox(height: 150,),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: CircleAvatar(backgroundImage: AssetImage("assets/img/spotify.png"),radius: 50,),
                ),
                Column(
                  children: [SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(

                          filled: true,fillColor: Colors.white,
                          icon: Icon(Icons.person),
                          labelText: 'Username',
                          // border: OutlineInputBorder(),
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
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(filled: true,
                          fillColor: Colors.white,
                          icon: Icon(Icons.password),
                          labelText: 'password',
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
                          MaterialPageRoute(builder: (context) => const sli()),
                        );
                      }

                    }, child: Text("Log in",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,)
                    ),
                    ),
                  ],

                ),
              ],

            ),
          ),
        ),
      ),

    );
  }
}
