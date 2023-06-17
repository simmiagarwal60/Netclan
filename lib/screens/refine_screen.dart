import 'package:flutter/material.dart';
import 'package:netclan/screens/explore_screen.dart';

class RefineScreen extends StatefulWidget {
  const RefineScreen({Key? key}) : super(key: key);

  @override
  State<RefineScreen> createState() => _RefineScreenState();
}

class _RefineScreenState extends State<RefineScreen> {

  double _currentSliderValue = 1;
  List list = [{"title": "Away | Stay Discreet and Watch", "value":"1"},{"title":"Busy | Do Not Disturb | Will Catch Up Later", "value":"2"},{"title": "SOS | Emergency! Need Assistance! HELP", "value": "3"}];
  String defaultvalue = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Refine'),
          backgroundColor: Color(0xff022E1F),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text('Select Your Availabilitiy', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),
                  SizedBox(height: 10,),
                  InputDecorator(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                      contentPadding: const EdgeInsets.all(10),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isDense: true,
                          value: defaultvalue,
                          isExpanded: true,
                          menuMaxHeight: 350,
                          items: [
                            DropdownMenuItem(
                                child: Text("Available | Hey Let Us Connect"),
                            value: ""),

                            ...list.map<DropdownMenuItem<String>>((data){
                              return DropdownMenuItem(
                                  child: Text(data['title']), value: data['value'],);
                            }).toList(),
                          ],
                      onChanged: (value){
                            print('Selected value $value');
                            setState(() {
                              defaultvalue = value!;
                            });
                      },),
                    ),
                  ),
              SizedBox(height: 20,),
              Text('Add Your Status', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),
              SizedBox(height: 10,),
              TextFormField(
                initialValue: 'Hi community! I am open to new connections "😊"',
                keyboardType: TextInputType.multiline,
                maxLines: null,
                maxLength: 250,
                style: TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text('Select Hyper local Distance', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),

              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 2,
                  minThumbSeparation: 100,
                  overlayColor: Colors.transparent,
                  thumbColor: Color(0xff022E1F),
                  disabledThumbColor:Color(0xff022E1F),
                  rangeThumbShape: RoundRangeSliderThumbShape(enabledThumbRadius: 10, disabledThumbRadius: 10),

                ),
                child: Slider(
                    value: _currentSliderValue,
                    max: 100,
                    divisions: 100,
                    activeColor: Color(0xff022E1F),
                    inactiveColor: Colors.grey.withOpacity(0.4),
                    label: _currentSliderValue.toString(),
                    onChanged: (double value){
                      print(value);
                      setState(() {
                        _currentSliderValue = value;
                      });
                    }),
              ),

              Row(
                children: [
                  Expanded
                    (
                      flex:6,
                      child: Text("1 Km", style: TextStyle(fontSize: 13, color: Colors.grey.shade600),)),
                  Expanded(
                    flex: 1,
                      child: Text("100 Km", style: TextStyle(fontSize: 13, color: Colors.grey.shade600),)),
                ],
              ),
              SizedBox(height: 10),
              Text('Select Purpose', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14),),
              SizedBox(height: 10),

              Row(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ).copyWith(
                        side: getBorder(Colors.white, Color(0xff022E1F)),
                      foregroundColor: getColor(Color(0xff022E1F), Colors.white),
                      backgroundColor: getColor(Colors.white, Color(0xff022E1F)),
                    ),
                    onPressed: () { },
                    child: Text('Coffee'),
                  ),
                  SizedBox(width: 6),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ).copyWith(
                      side: getBorder(Colors.white, Color(0xff022E1F)),
                      foregroundColor: getColor(Color(0xff022E1F), Colors.white),
                      backgroundColor: getColor(Colors.white, Color(0xff022E1F)),
                    ),
                    onPressed: () { },
                    child: Text('Business'),
                  ),
                  SizedBox(width: 6),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ).copyWith(
                      side: getBorder(Colors.white, Color(0xff022E1F)),
                      foregroundColor: getColor(Color(0xff022E1F), Colors.white),
                      backgroundColor: getColor(Colors.white, Color(0xff022E1F)),
                    ),
                    onPressed: () { },
                    child: Text('Hobbies'),
                  ),
                  SizedBox(width: 6),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ).copyWith(
                      side: getBorder(Colors.white, Color(0xff022E1F)),
                      foregroundColor: getColor(Color(0xff022E1F), Colors.white),
                      backgroundColor: getColor(Colors.white, Color(0xff022E1F)),
                    ),
                    onPressed: () { },
                    child: Text('Friendship'),
                  ),
                  SizedBox(width: 6),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ).copyWith(
                      side: getBorder(Colors.white, Color(0xff022E1F)),
                      foregroundColor: getColor(Color(0xff022E1F), Colors.white),
                      backgroundColor: getColor(Colors.white, Color(0xff022E1F)),
                    ),
                    onPressed: () { },
                    child: Text('Movies'),
                  ),
                  SizedBox(width: 6),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ).copyWith(
                      side: getBorder(Colors.white, Color(0xff022E1F)),
                      foregroundColor: getColor(Color(0xff022E1F), Colors.white),
                      backgroundColor: getColor(Colors.white, Color(0xff022E1F)),
                    ),
                    onPressed: () { },
                    child: Text('Dinning'),
                  ),
                  SizedBox(width: 6),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ).copyWith(
                      side: getBorder(Colors.white, Color(0xff022E1F)),
                      foregroundColor: getColor(Color(0xff022E1F), Colors.white),
                      backgroundColor: getColor(Colors.white, Color(0xff022E1F)),
                    ),
                    onPressed: () { },
                    child: Text('Dating'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ).copyWith(
                      side: getBorder(Colors.white, Color(0xff022E1F)),
                      foregroundColor: getColor(Color(0xff022E1F), Colors.white),
                      backgroundColor: getColor(Colors.white, Color(0xff022E1F)),
                    ),
                    onPressed: () { },
                    child: Text('Matrimony'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(200,36),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    backgroundColor: Color(0xff022E1F) ,
                  ).copyWith(
                    side: getBorder(Colors.white, Color(0xff022E1F)),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ExploreScreen()));
                  },
                  child: Text('Save & Explore', style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
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
  MaterialStateProperty<BorderSide?> getBorder(Color color, Color colorPressed){
    final getBorder = (Set<MaterialState> states){
      if (states.contains(MaterialState.pressed))
        return BorderSide(color: color, width: 2);
      return BorderSide(color: colorPressed, width: 2);
    };

    return MaterialStateProperty.resolveWith(getBorder);

  }

}
