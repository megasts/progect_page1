import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStile = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(36)),
      borderSide: BorderSide(
        color: const Color(0xFFeceff1), width: 2
      )
    );
    const borderFocusStile = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color: const Color(0xFF0079D0), width: 2
        )
    );
    const linkTextStyle = TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF0079D0)
    );
    return MaterialApp(
      home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sea.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            width: double.infinity,
            child: Column(children: [
              SizedBox(height: 77,),
              const SizedBox(width: 157,height: 90,
                child: Image(image: AssetImage('assets/sea.jpg'),),),
              SizedBox(height: 19,),
              Text("введите логин (номер телефона 10 цифр",
              style: TextStyle(fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),),
              SizedBox(height: 19,),
              const SizedBox(width: 224,height: 39,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStile,
                    focusedBorder: borderFocusStile,
                    labelText: 'Телефон',
                  ),
                ),
              ),
              SizedBox(height: 19,),
              const SizedBox(width: 224, height: 39,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStile,
                    focusedBorder: borderFocusStile,
                    labelText: 'Пароль',
                  ),
                ),
              ),
              SizedBox(height: 28,),
              SizedBox(width: 154, height:42, child: 
                ElevatedButton(onPressed: () {}, 
                    child: Text('Войти'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0079D0),
                      shape: RoundedRectangleBorder(
                          borderRadius:  BorderRadius.circular(36.0),
                      ),
                    ),
                )
              ),
              SizedBox(height: 42,),
               InkWell(child: const  Text('Регистрация',
                style: linkTextStyle,),
                onTap: () {}),
              SizedBox(height: 19,),
              InkWell(child: Text('Забыли пароль?', style: linkTextStyle,),
                onTap: () {})
            ],),
          )
      ),
    );
  }
}