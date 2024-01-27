import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white, 
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
             },
          ),
          title: Text(
              "Halyk Life Bonus",
              style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w800,
              )
              ),
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 52,top: 152,right: 52),
          child: Column(
            children: [
              Container(
                    width: 280,
                    height: 176.57,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: LinearGradient(
                    begin: Alignment.topCenter, end: Alignment.bottomCenter,
                    colors: [Color(0xff0cc24a), Color(0xffb1cbba)], )),
                    child: Padding(
                      padding: EdgeInsets.only(left: 13),
                      child:Column(children: [
                        //Image.asset("assets/icons/logo.png",width: 24,height: ,),
                        Padding(
                          padding: const EdgeInsets.only(top:70),
                          child: Center(
                            child:Text("8751548487848"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 37),
                          child: Row(
                            children: [
                              Text(
                              "Действует до",
                              style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              )
                              ),
                              SizedBox(width: 10,),
                              Text(
                              "cvc/cvv",
                              style: TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              )
                              )
                            ],
                          ),
                          
                        ),
                      Padding(
                          padding: const EdgeInsets.only(top:7),
                          child: Row(
                            children: [
                              Text(
                              "01/23",
                              style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              )
                              ),
                              SizedBox(width: 50,),
                              Text(
                              "...",
                              style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              )
                              ),
                              SizedBox(width: 100,),
                              //Image.asset("name")
                            ],
                          ),
                          
                        )
                      ],) 
                      
                      ),
                    
                    ),
              SizedBox(height: 20,),
              Container(
              width: 290,
              height: 77,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(top: 10,left: 18),
                child: Column(
                  children: [
                    Row(children: [
                      Container(
                        width: 30,
                        height: 30,
                      ),
                      Container(
                        width: 30,
                        height: 30,
                      ),
                      Container(
                        width: 30,
                        height: 30,
                      )
                      
                    ]),
                    Row(children: [
                      Text(
                        "Пополнить",
                        style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        )
                        ),
                      SizedBox(width: 45,),
                      Text(
                        "Перевести",
                        style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        )
                        ),
                      SizedBox(width: 45,),
                      Text(
                        "Снять деньги",
                        style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        )
                        ),
                      
                    ])
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
