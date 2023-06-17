import 'package:flutter/material.dart';

class BusinessCard extends StatefulWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  State<BusinessCard> createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 250,
      child: Stack(
        children: [
          Positioned(
            left: 40,
            right: 0,
            child: Material(
              child: Container(
                height: 230,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12, width: 1,),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [new BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 4.0,)
                    //spreadRadius: 2.0)
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            child: Container(
              height: 90,
              width: 80,
              child: Align(
                  alignment: Alignment.center,
                  child: Text("SA", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 28),)),
              decoration: BoxDecoration(
                color: Color(0xff9DB2BF),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [new BoxShadow(color: Colors.grey.withOpacity(0.3),
                    blurRadius: 20.0,
                    spreadRadius: 4.0)],
              ),
            ),
          ),
          Positioned(
            left: 100,
            top: 45,
            child: Container(
              height: 110,
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Simran Agarwal", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                  Text("Alwar, within 1.2 KM", style: TextStyle(fontSize: 15, color: Colors.black),),
                  SizedBox(height: 5,),
                  Container(
                    width: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: LinearProgressIndicator(
                        minHeight: 15,
                        value: 0.5,
                        backgroundColor: Colors.black12,
                        valueColor: AlwaysStoppedAnimation(Color(0xff022E1F)),
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      SizedBox(width: 20,),
                      InkWell(
                        onTap: () {
                          // handle button press
                        },
                        child: Container(
                          width: 30,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff022E1F),
                          ),
                          child: Icon(
                            Icons.phone,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),
                      InkWell(
                        onTap: () {
                          // handle button press
                        },
                        child: Container(
                          width: 30,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff022E1F),
                          ),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 5,),
          Positioned(
            left: 60,
            top: 150,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Flutter developer", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('I want to work with your company as an intern!', style: TextStyle(color: Colors.black87),),
                  SizedBox(height: 5,),
                  Text('I am Simran', style: TextStyle(color: Colors.black54),),
                  Text('I am a Flutter developer', style: TextStyle(color: Colors.black54),),
                ],
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
            child: TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: 14),
                alignment: Alignment.bottomLeft,
              ),
              onPressed: null,
              child: const Text('+ INVITE', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),),
            ),
          )
        ],
      ),
    );
  }
}
