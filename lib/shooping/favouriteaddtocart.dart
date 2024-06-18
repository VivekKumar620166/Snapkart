// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:snapkart/components/products_provider.dart';
// class favouritestore extends StatefulWidget {
//   const favouritestore({super.key});
//
//   @override
//   State<favouritestore> createState() => _favouritestoreState();
// }
//
// class _favouritestoreState extends State<favouritestore> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.arrow_back,color: Colors.white,),
//         backgroundColor: Colors.pink,
//         title: Text(" Your Favourite Movies",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//       ),
//       body:
//       ListView.builder(
//         itemCount: fav.length,
//         itemBuilder: (BuildContext context, int index) {
//           return ListTile(
//             title: Text("Movie ${fav[index]}"),
//             trailing: TextButton(
//               onPressed: (){
//                 context.read<Products>().removefav(fav[index]);
//
//               },
//               child: Text("Remove",style: TextStyle(color: Colors.red),),
//             ),
//           );
//         },
//       )
//
//       ,
//     );
//   }
// }
