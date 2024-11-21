import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeActivity(),
        debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(primarySwatch: Colors.amber),
      color: Colors.redAccent,

    );
  }

}

class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MySnackBar(msg, context){
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(msg))
  );
}


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
       title: Text("bKash App"),
       backgroundColor: Colors.green,
       toolbarHeight: 60,
       elevation: 70,
       toolbarOpacity: 1,
       actions: [
         IconButton(onPressed: (){MySnackBar("Comment",context);}, icon: Icon(Icons.comment)),
         IconButton(onPressed: (){MySnackBar("search",context);}, icon: Icon(Icons.search)),
         IconButton(onPressed: (){MySnackBar("settings",context);}, icon: Icon(Icons.settings)),
         IconButton(onPressed: (){MySnackBar("email",context);}, icon: Icon(Icons.email)),
       ],
       

     ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: (){MySnackBar("floating action button", context);
          
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.green,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),

        ],
        onTap: (int index){
          if(index==0){
            MySnackBar("Home", context);
          }
          if(index==1){
            MySnackBar("Contact", context);
          }
          if(index==2){
            MySnackBar("profile", context);
          }
        },
      ),


    );
  }

}