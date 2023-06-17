import 'package:flutter/material.dart';

class MerchantPage extends StatefulWidget {
  const MerchantPage({Key? key}) : super(key: key);

  @override
  State<MerchantPage> createState() => _MerchantPageState();
}

class _MerchantPageState extends State<MerchantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 300,
                      child: Align(
                        alignment: Alignment.center,
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Search",
                            hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: Colors.black45),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            isDense: true,
                            filled: true,
                          ),
                          //textAlign: TextAlign.start,
                          textAlignVertical: TextAlignVertical.center,
                          // expands: true,
                          // minLines: null,
                          // maxLines: null,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.tune_rounded),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),

                Container(
                  height: 120,
                  width: 200,
                  child: Image.asset("assets/images/mobile.png"),
                ),
                SizedBox(
                  height: 40,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Your explore list is ',
                    style: TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                    children: const <TextSpan>[
                      TextSpan(text: 'EMPTY', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange)),

                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Sorry, we could not find any user near you.", style: TextStyle(color: Colors.black45),),
                Text("Try increasing your search radius.", style: TextStyle(color: Colors.black45),),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      minimumSize: Size(270,36),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      backgroundColor: Color(0xff022E1F) ,
                    ).copyWith(
                      side: getBorder(Colors.white, Color(0xff022E1F)),
                    ),
                    onPressed: () {
                    },
                    child: Text('INCREASE RADIUS', style: TextStyle(color: Colors.white),),
                  ),
                ),

              ],
            ),
          )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: FloatingActionButton(
          onPressed: (){
          },
          child: Icon(Icons.add),
          backgroundColor: Color(0xff022E1F),
        ),
      ),
    );
  }
  MaterialStateProperty<Color?> getColor(Color color, Color colorPressed){
    final getColor = (Set<MaterialState> states){
      if (states.contains(MaterialState.pressed))
        return colorPressed;
      return color;
    };

    return MaterialStateProperty.resolveWith(getColor);

  }
  MaterialStateProperty<BorderSide?> getBorder(Color color, Color colorPressed) {
    final getBorder = (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed))
        return BorderSide(color: color, width: 2);
      return BorderSide(color: colorPressed, width: 2);
    };
    return MaterialStateProperty.resolveWith(getBorder);
  }
}
