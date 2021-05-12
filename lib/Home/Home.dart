import 'package:flutter/material.dart';
import 'Card.dart';
import 'items.dart';

main() {
  runApp(RestaurantAppState());
}
//
// class RestaurantApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return RestaurantAppState();
//   }
// }

class RestaurantAppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final List<String> items = ['1', '2', '3', '4', '5'];
    // String selectedItem = items[0];

    // void func(value){
    //   setState(() {
    //     selectedItem = value;
    //   });
    // }


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Restaurant Menu"),
          leading: IconButton(icon:Icon(Icons.arrow_back_rounded),onPressed: (){
            Navigator.pop(context);
          }),
        ),
      //   body:Expanded(
      //     child: Container(
      //       color: Colors.black12.withOpacity(.08),
      //
      //       padding:  EdgeInsets.symmetric(horizontal: 10),
      //
      //       child: ListView.builder(
      //         itemCount: card.length,
      //         itemBuilder: (context,index){
      //           return TestState(
      //             items0:card[index],
      //         );
      //         },
      //
      //     ),
      // ),
      //   ),
       body: Column(
         children:<Widget>[
           // Container(
           //   width: double.infinity,
           //   height: 100,
           //   color: Colors.yellow,
           //   child: Text("................."),
           // ),
           // Container(
           //   width: double.infinity,
           //   height: 100,
           //   color: Colors.red,
           //   child: Text("................."),
           // ),
           
           Expanded(
              child: Container(
                color: Colors.black12.withOpacity(.08),

                padding:  EdgeInsets.symmetric(horizontal: 10),

                child: ListView.builder(
                    itemCount: card.length,
                    itemBuilder: (context,index)=>TestState(items0:card[index],
                   //   press: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Details(places:places[index]))),
                    )

                ),
              )),
       ]),

      ));
  }
}

