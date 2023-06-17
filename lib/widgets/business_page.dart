import 'package:flutter/material.dart';
import 'package:netclan/widgets/business_card.dart';

class BusinessPage extends StatefulWidget {
  const BusinessPage({Key? key}) : super(key: key);

  @override
  State<BusinessPage> createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage> {
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
                  width: 10,
                ),
                Expanded(
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.only(top: 20),
                      itemCount: 2,
                      shrinkWrap: true,
                      itemBuilder: (context, index){
                        return BusinessCard();
                      }),
                ),
                //     PersonalCard(),
                //     ListView(
                //       children: [
                //
                //       ],
                //     )
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
}


