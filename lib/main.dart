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
      drawer: Drawer(
        child: ListView(
          children: [

            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(

                  currentAccountPicture: Image.network("https://media.istockphoto.com/id/1045035708/vector/duckling-simple-vector-icon.webp?s=2048x2048&w=is&k=20&c=Qx8IwvfRPlQoaElvo3oqs6cT7UFOLuD2ADjErUl_nS4="),
                decoration: BoxDecoration(color: Colors.blue),

                accountName: Text("ILIYAS AHMED", style: TextStyle(color: Colors.black87)),
                accountEmail: Text("iliyasahmedr@gmail.com"),
            )
            ),
            ListTile(leading: Icon(Icons.home) , title: Text("Home"), onTap: (){MySnackBar("Home End Drawer", context);},),
            ListTile(leading: Icon(Icons.contact_emergency) ,title: Text("Contact Us"),onTap: (){MySnackBar("Contact End Drawer", context);}),
            ListTile(leading: Icon(Icons.phone) ,title: Text("Phone"),onTap: (){MySnackBar("Phone End Drawer", context);}),
            ListTile(leading: Icon(Icons.email) ,title: Text("Email"),onTap: (){MySnackBar("Email End Drawer", context);}),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [

            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(

                  currentAccountPicture: Image.network("https://media.istockphoto.com/id/1045035708/vector/duckling-simple-vector-icon.webp?s=2048x2048&w=is&k=20&c=Qx8IwvfRPlQoaElvo3oqs6cT7UFOLuD2ADjErUl_nS4="),
                  decoration: BoxDecoration(color: Colors.blue),

                  accountName: Text("ILIYAS AHMED", style: TextStyle(color: Colors.black87)),
                  accountEmail: Text("iliyasahmedr@gmail.com"),
                )
            ),
            ListTile(leading: Icon(Icons.home) , title: Text("Home"), onTap: (){MySnackBar("Home End Drawer", context);},),
            ListTile(leading: Icon(Icons.contact_emergency) ,title: Text("Contact Us"),onTap: (){MySnackBar("Contact End Drawer", context);}),
            ListTile(leading: Icon(Icons.phone) ,title: Text("Phone"),onTap: (){MySnackBar("Phone End Drawer", context);}),
            ListTile(leading: Icon(Icons.email) ,title: Text("Email"),onTap: (){MySnackBar("Email End Drawer", context);}),
          ],
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: 100, width: 100, child: Image.network("https://hips.hearstapps.com/hmg-prod/images/how-to-keep-ducks-call-ducks-1615457181.jpg")),
          Container(height: 100, width: 100, child: Image.network("https://hips.hearstapps.com/hmg-prod/images/how-to-keep-ducks-call-ducks-1615457181.jpg")),
          Container(height: 100, width: 100, child: Image.network("https://hips.hearstapps.com/hmg-prod/images/how-to-keep-ducks-call-ducks-1615457181.jpg"))
        ],
      ),


    );
  }

}
