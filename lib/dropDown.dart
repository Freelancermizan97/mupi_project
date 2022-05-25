import 'package:flutter/material.dart';

class dropDown extends StatefulWidget {
  const dropDown({Key? key}) : super(key: key);

  @override
  State<dropDown> createState() => _dropDownState();
}

class _dropDownState extends State<dropDown> {

  final items = ['Item1', 'Item2', 'Item3', 'Item4', 'Item5'];
  String? selectedItem = 'Item1';

  final List<String>  items1 = ['Item1', 'Item2', 'Item3', 'Item4', 'Item5'];
  String? selectedItem1 = 'Item';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(

                  value: selectedItem,
                  items: items.map((item) => DropdownMenuItem(
                    value: item,
                    child: Row(
                      children: [
                        Image(image: AssetImage('images/icon12.png'),height: 15, width: 15,),
                        SizedBox(width: size.width*0.01,),
                        Text(item, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                      ],
                    ),

                  ) )
                      .toList(),
                  onChanged: (item) => setState(() => selectedItem = item,)
                ),
              ),
            ),
            Center(
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(

                  value: selectedItem1,
                  items: items1.map((item) => DropdownMenuItem(
                    value: item,
                    child: Row(
                      children: [
                        Image(image: AssetImage('images/icon12.png'),height: 15, width: 15,),
                        SizedBox(width: size.width*0.01,),
                        Text(item, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,fontFamily: 'Nun', color: Color(0xff494A4B)),)
                      ],
                    ),

                  ) )
                      .toList(),
                  onChanged: (item) => setState(() => selectedItem1 = item,)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



}
