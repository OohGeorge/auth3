
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color: const Color(0xFFeeeeee), width: 2));


    bool _value = false;
    bool value=true;

    return MaterialApp(

      home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image:  DecorationImage(
                image: AssetImage('assets/1927.jpg'),
                fit: BoxFit.cover,
              )
            ),
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: SingleChildScrollView(
              child: Column(children:  [
                SizedBox(height: 40,),
                const SizedBox(width: 55, height: 50, child: Image(image: AssetImage('assets/dart-logo.png')),),
                SizedBox(height: 20,),
                Text('Pizza calculator',
                  style: TextStyle(fontSize:40, color: Color.fromRGBO(0,0,0,0.6)),),
              SizedBox(height: 20,),
            Text('Choose parameters:',
              style: TextStyle(fontSize:20, color: Color.fromRGBO(0,0,0,0.6)),),
                SizedBox(height: 28,),
                Row(children: [
                  Expanded(
                    flex:2,
                    child: SizedBox(width:124, height:38,
                        child: ElevatedButton(onPressed: () {},
                            child: Text('Ordinary'),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF0079D0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(36.0),
                                )
                            )
                        )
                    ),),
                    Spacer(flex: 1),
                    Expanded(
                      flex:2,
                      child: SizedBox(width:124, height:38,
                          child: ElevatedButton(onPressed: () {},
                              child: Text('Thin'),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF0079D0),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(36.0),
                                  )
                              )
                          )
                      ),
                    ),
                ],),
                SizedBox(height: 20,),
                Text('Size:',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize:20, color: Color.fromRGBO(0,0,0,0.6)),),
                SizedBox(height: 10,),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.lightGreen,
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      labelText:'Phone'
                  ),
                ),
                SizedBox(height: 20,),
                Text('Sauce:',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize:20, color: Color.fromRGBO(0,0,0,0.6)),),
                SizedBox(height: 10,),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.lightGreen,
                      enabledBorder: borderStyle,
                      focusedBorder: borderStyle,
                      labelText:'Password'
                  ),
                ),
                SizedBox(height: 28,),
                SizedBox(width:170, height:34,
                    child: ElevatedButton(onPressed: () {},
                        child: Text('Come in'),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF0079D0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36.0),
                            )
                        )
                    )
                ),
                SizedBox(height: 68,),
                InkWell(child: Text('Registration',
                  style: TextStyle(fontSize:16, fontWeight: FontWeight.bold, color: Color(0xFF0079D0)),),
                    onTap: () {}),
              SizedBox(height: 20,),
                InkWell(child: Text('Forgot password',
                  style: TextStyle(fontSize:16, fontWeight: FontWeight.bold, color: Color(0xFF0079D0)),),onTap: () {}),
              ],),
            ),
          )
      ),
    );
  }
}






