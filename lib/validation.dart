import 'package:flutter/material.dart';
import 'package:subash/Amazon.dart';


class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formGlobalKey,
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
            children: [SizedBox(height: 120,),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: CircleAvatar(backgroundImage: AssetImage("assets/img/amazonlogo.jpg"),radius: 100,),
              ),
              Column(
                children: [SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                          labelText: 'Email(phone for mobile account)',
                        border: OutlineInputBorder(),
                      ),
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
                      decoration: InputDecoration(
                          icon: Icon(Icons.password),
                          labelText: 'Amazon password',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null ||value.length<7)
                        {
                          return 'Enter a valid password!';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){

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