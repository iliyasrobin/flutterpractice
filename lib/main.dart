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
   HomeActivity({super.key});

  //snackbar
  MySnackBar(msg, context){
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(msg))
  );
}

  //dynamic List/Grid View Objects
var MyItems = [
    {"img": "https://upload.wikimedia.org/wikipedia/commons/b/bf/Bucephala-albeola-010.jpg", "title":"Iliyas"},
    {"img": "https://upload.wikimedia.org/wikipedia/commons/b/bf/Bucephala-albeola-010.jpg", "title":"Iliyas"},
    {"img": "https://upload.wikimedia.org/wikipedia/commons/b/bf/Bucephala-albeola-010.jpg", "title":"Iliyas"},
    {"img": "https://upload.wikimedia.org/wikipedia/commons/b/bf/Bucephala-albeola-010.jpg", "title":"Iliyas"},
    {"img": "https://upload.wikimedia.org/wikipedia/commons/b/bf/Bucephala-albeola-010.jpg", "title":"Iliyas"},
  ];
  

  //alert dialogue box
  MyAlertDialogue(context){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(child: AlertDialog(
            title: Text("Alert!"),
            content: Text("do you want to proceed?"),
            actions: [
              TextButton(onPressed: (){
                MySnackBar("Proceeded", context);
                Navigator.of(context).pop();
              }, child: Text("Yes")),

              TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No")),
            ],

          ),
          );
    }
    );
  }



  @override
  Widget build(BuildContext context) {

    //button styling
    ButtonStyle buttonStyle= ElevatedButton.styleFrom(
      padding: EdgeInsets.all(20),
      foregroundColor: Colors.white,
      backgroundColor: Colors.green,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(1)),
    ));
    ButtonStyle buttonStyle2= TextButton.styleFrom(
        padding: EdgeInsets.all(20),
        foregroundColor: Colors.white,
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(1)),
        ));

    ButtonStyle buttonStyle3 =ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(20),
    backgroundColor: Colors.green,
      minimumSize : Size(double.infinity, 60),

  );




    return  Scaffold(
      //appBar
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
      //floatingActionButton
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: (){MySnackBar("floating action button", context);
          
        },
      ),

      //bottomNavigationBar
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

      //drawer
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

      //end Drawer

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

      //row

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: 100, width: 100, child: Image.network("https://hips.hearstapps.com/hmg-prod/images/how-to-keep-ducks-call-ducks-1615457181.jpg")),
          Container(height: 100, width: 100, child: Image.network("https://hips.hearstapps.com/hmg-prod/images/how-to-keep-ducks-call-ducks-1615457181.jpg")),
          Container(height: 100, width: 100, child: Image.network("https://hips.hearstapps.com/hmg-prod/images/how-to-keep-ducks-call-ducks-1615457181.jpg"))
        ],
      ),

      //column

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(height: 100, width: 100, child: Image.network("https://hips.hearstapps.com/hmg-prod/images/how-to-keep-ducks-call-ducks-1615457181.jpg")),
          Container(height: 100, width: 100, child: Image.network("https://hips.hearstapps.com/hmg-prod/images/how-to-keep-ducks-call-ducks-1615457181.jpg")),
          Container(height: 100, width: 100, child: Image.network("https://hips.hearstapps.com/hmg-prod/images/how-to-keep-ducks-call-ducks-1615457181.jpg"))
        ],
      ),



      //alert

      body: Center(
       child:  ElevatedButton(onPressed: (){MyAlertDialogue(context);}, child: Text("Alert !")),
      )
      

      //Form
       body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'First Name'),),),
          Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Last Name'),),),
          Padding(padding: EdgeInsets.all(20), child: TextField(decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Email Name'),),),
          ElevatedButton(onPressed: (){}, child: Text("Submit"), style: buttonStyle3)
        ],
      ),


      //Dynamic List View Builder
      body: ListView.builder(
          itemCount: MyItems.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.all(20),
                width: double.infinity,
                height: 200,
                child: Image.network(MyItems[index]['img']!),
              ),
            );
          },
      ),

    //Dynamic Grid View Builder

       body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.5),
          itemCount: MyItems.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.all(5),
                width: double.infinity,
                height: 200,
                child: Image.network(MyItems[index]['img']!),
              ),
            );
          },
      ),

      // Tab Bar
      return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(title: Text("MyApp"),
        backgroundColor: Colors.lightBlue,
        bottom: TabBar(
          isScrollable: true,
          tabs: [
            Tab(icon: Icon(Icons.home),text: 'Home'),
            Tab(icon: Icon(Icons.search),text: 'search'),
            Tab(icon: Icon(Icons.settings),text: 'settings'),
            Tab(icon: Icon(Icons.contact_support),text: 'contact_support'),
            Tab(icon:  Icon(Icons.alternate_email),text: 'alternate_email'),
            Tab(icon:  Icon(Icons.comment_bank),text: 'comment_bank'),
            Tab(icon: Icon(Icons.safety_check),text: 'safety_check'),
            Tab(icon: Icon(Icons.dangerous),text: 'dangerous'),
          ],
        ),
        
        
        ),

        body: TabBarView(
            children:[
              HomeFrag(),
              searchFrag(),
              settingsFrag(),
              contactFrag(),
              emailFrag(),
              contactFrag(),
              safetyFrag(),
              dangerousFrag(),
                ],
        ),
        
        
       
      ),
    );


      //


    );
  }

}
