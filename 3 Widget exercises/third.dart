import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter app",
      home: Scaffold(
        appBar: AppBar(
            title: const Center(
          child: Text("flutter"),
        )),
        body: 
          Column(children: [
            Padding(
              padding: const EdgeInsets.all(6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/car.jpg',
                height: 250
                
                ,),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "1975 Porshe 911 Carera",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Icon(Icons.thumb_up),
                const Text("0"),
                Icon(Icons.chat_bubble_outline_outlined),
                const Text("0"),
                const Icon(Icons.turn_right_outlined),
                const Text("Share")
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Essential Information",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Text(
                      "1 of 3 done",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ]),
            ),
            Divider(
              height: 20,
              color: Colors.black,
              thickness: 1,
              indent: 13,
              endIndent: 13,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 230,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
                Text(
                  "Year,Make,Model,VIN",
                  style: TextStyle(fontWeight: FontWeight.w500,
                  fontSize: 20),
                ),

                    ],
                  )

                ),


                Icon(Icons.pentagon_sharp)
              ],
            ),
 
            const Text(
              "Year: 1975",
              textAlign: TextAlign.left,
            ),
            const Text(
              "Make: Porshe",
            ),
            const Text(
              "Model: 991 canera",
            ),
            const Text(
              "VIN: 09909993423"
            ),
            Divider(
              height: 15,
              // color: Colors.black,
              thickness: 1,
              indent: 13,
              endIndent: 13,

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 140,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Icon(
                    Icons.check_circle,


                ),
                
                Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),

                    ],
                  )

                ),

                Icon(
                  Icons.abc
                )
              ],
            ),
            Divider(
              height: 15,
              // color: Colors.black,
              thickness: 1,
              indent: 13,
              endIndent: 13,

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Icon(
                    Icons.check_circle,


                ),
                
                Text(
                  "Photos",
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),

                    ],
                  )

                ),

                Icon(
                  Icons.abc
                )
              ],
            ),
          ]),
        ),
      
    );
  }
}
