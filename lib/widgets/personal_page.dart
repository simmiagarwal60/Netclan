import 'package:flutter/material.dart';
import 'package:netclan/widgets/personal_card.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({Key? key}) : super(key: key);

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
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
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                          textAlign: TextAlign.start,
                          textAlignVertical: TextAlignVertical.center,
                          expands: true,
                          minLines: null,
                          maxLines: null,
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
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    return PersonalCard();
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
