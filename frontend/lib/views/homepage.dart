import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
          },
        ),
        title: Text(
          "Halyk Life Bonus",
          style: Theme.of(context).textTheme.titleMedium
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff0cc24a), Color(0xffb1cbba)],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 70),
                      child: Center(
                        child: Text("8751548487848"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Text(
                            "Действует до",
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "cvc/cvv",
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ), 
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Text(
                            "01/23",
                            style: Theme.of(context).textTheme.bodySmall
                          ),
                          const SizedBox(width: 50),
                          Text(
                            "...",
                            style: Theme.of(context).textTheme.bodySmall
                          ),
                          const SizedBox(width: 100),
                          //Image.asset("name")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 290,
              height: 77,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10,left: 18),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        SizedBox(
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(
                          width: 30,
                          height: 30,
                        )
                      ]
                    ),
                    Row(
                      children: [
                        Text(
                          "Пополнить",
                          style: Theme.of(context).textTheme.bodySmall
                        ),
                        const SizedBox(width: 45),
                        Text(
                          "Перевести",
                          style: Theme.of(context).textTheme.bodySmall
                        ),
                        const SizedBox(width: 45),
                        Text(
                          "Снять деньги",
                          style: Theme.of(context).textTheme.bodySmall
                        ),
                      ]
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
