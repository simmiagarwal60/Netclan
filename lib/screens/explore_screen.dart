import 'package:flutter/material.dart';
import 'package:netclan/screens/refine_screen.dart';
import 'package:netclan/widgets/business_page.dart';
import 'package:netclan/widgets/merchant_page.dart';
import 'package:netclan/widgets/personal_page.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> with SingleTickerProviderStateMixin{
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 3, vsync: this, initialIndex: 0 );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Howdy Simran Agarwal!!', style: TextStyle(fontSize: 16),),
            Align(
              //alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Icon(Icons.location_on, size: 15,),
                  Text('Budhvihar, Alwar',style: TextStyle(fontSize: 14),),
                ],
              ),
            )
          ],
        ),
        actions: [
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> RefineScreen()));
                    },
                    child: Text('Refine')),
              )),
        ],
        backgroundColor: Color(0xff022E1F),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              text: "PERSONAL",
            ),
            Tab(
              text: "BUSINESS",
            ),
            Tab(
              text: "MERCHANT",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          PersonalPage(),
          BusinessPage(),
          MerchantPage(),
        ],
      ),

    );
  }
}
