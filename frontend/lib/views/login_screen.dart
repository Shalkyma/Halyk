import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF68DD7B),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(top: 230, start: 80, end: 30),
              child: Row(
                children: [
                  Image.asset(
                    "assets/icons/logo.png",
                    width: 34,
                    height: 34,
                  ),
                  Text(
                    "Halyk Life Bonus",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(top: 18, ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Выравнивание по левому краю
                    children: [
                      Text(
                        "Логин",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10), // Отступ между текстом "Логин" и полем ввода
                      Container(
                        width: 263,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4.0), // Слегка закругленные углы
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "",
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(horizontal: 8), // Отступы внутри поля
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
              padding: EdgeInsetsDirectional.only(top: 18, ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Выравнивание по левому краю
                children: [
                  Text(
                    "Пароль",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 10), // Отступ между текстом "Логин" и полем ввода
                  Container(
                    width: 263,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4.0), // Слегка закругленные углы
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "",
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(horizontal: 8), // Отступы внутри поля
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text(
                  "Нет аккаунта? Зарегистрироваться",
                  style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  )
                  ),

            ),
            Padding(
              padding: const EdgeInsets.only(left: 210,top: 15),
              child: Container(
                width: 51,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.0),),
                child: ElevatedButton(
                  onPressed: () => print("Hello"),
                  child: Text(
                        "ОК",
                        style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w100,
                        color: Colors.black
                        )
                        ),
                  
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  ),
              ),
            )
              ],
              
            ),
          ],
        ),
      ),
    );
  }
}
