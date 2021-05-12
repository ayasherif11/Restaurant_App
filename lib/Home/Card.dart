import 'package:flutter/material.dart';
import 'package:restaurant_app/Home/DropDownButton.dart';
import 'items.dart';
import 'DropDownButton.dart';
//
// class Test extends StatefulWidget {
//
//   @override
//   TestState createState() => TestState();
// }

class TestState extends StatelessWidget {
  final Items items0;
  const TestState({Key key,this.items0}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final List<String> items = ['1', '2', '3', '4', '5'];
    String selectedItem = items[0];
    void func(value){
      // setState(() {
        selectedItem = value;
      // });
    }



    return Container(
      child: Container(
        alignment: Alignment.center,
        // width: MediaQuery.of(context).size.width/3,
        // height: MediaQuery.of(context).size.height/4,
        height: 300,
        width: 350,
        child: Card(
          color: Colors.black,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(

                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 30, bottom: 10, left: 10),
                      child: Image.asset(items0.images,),
                      width: 340,
                      height: 200,
                      //     fit: BoxFit.fitWidth,
                    ),
            Container(
            //  alignment: Alignment.center,
             // padding: EdgeInsets.only(right: 10),
              child: DropdownButton(

                dropdownColor: Colors.white70,
                //items: items.map((item) => DropdownMenuItem(child: Text(item),value: item,)).toList(),
                items: items.map((item){
                  return DropdownMenuItem(child: Text(item,style: TextStyle(color: Colors.white),),value: item);

                }).toList(),
                onChanged: (value) {
                  func(value);
                },
                value: selectedItem,
              ),
            ),

                  ]),
              Text(
                items0.name,
                style: TextStyle(color: Colors.white,fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

