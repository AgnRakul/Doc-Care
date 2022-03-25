import 'package:flutter/material.dart';

class TopCategories extends StatelessWidget {
  const TopCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text(
            "Top Categories",
            style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Circular Std',
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.23,
              height: MediaQuery.of(context).size.height * 0.12,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 9,
                    color: Color.fromARGB(255, 231, 231, 231),
                    offset: Offset(2, 1),
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  children: [
                    Image.network(
                      "https://cdn-icons.flaticon.com/png/512/2209/premium/2209670.png?token=exp=1648223897~hmac=f1054a3384ee10250970dd5cb3ebd8b1",
                      height: 70,
                      width: 50,
                    ),
                    Text("Dental",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'Circular Std',
                          fontSize: MediaQuery.of(context).textScaleFactor * 10,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.23,
              height: MediaQuery.of(context).size.height * 0.12,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 9,
                    color: Color.fromARGB(255, 231, 231, 231),
                    offset: Offset(2, 1),
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  children: [
                    Image.network(
                      "https://cdn-icons-png.flaticon.com/512/119/119052.png",
                      height: 70,
                      width: 50,
                    ),
                    Text("Eye",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'Circular Std',
                          fontSize: MediaQuery.of(context).textScaleFactor * 10,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.23,
              height: MediaQuery.of(context).size.height * 0.12,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 9,
                    color: Color.fromARGB(255, 231, 231, 231),
                    offset: Offset(2, 1),
                  ),
                ],
              ),
              child: Center(
                child: Column(
                  children: [
                    Image.network(
                      "https://cdn-icons-png.flaticon.com/512/5905/5905933.png",
                      height: 70,
                      width: 50,
                    ),
                    Text("Respiratory",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'Circular Std',
                          fontSize: MediaQuery.of(context).textScaleFactor * 10,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
