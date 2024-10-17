import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Custmscroll(),));
}
class Custmscroll extends StatefulWidget {
  const Custmscroll({super.key});

  @override
  State<Custmscroll> createState() => _CustmscrollState();
}

class _CustmscrollState extends State<Custmscroll> {
  var name=["amal","arun","ram","balu","meera","amal","arun","ram","balu","meera"];

  var phone=["857565674","7576465465","857565674","7576465465","97521232",
    "857565674","7576465465","857565674","7576465465","97521232"];

  var image=["assets/images/bg.jpg","assets/images/bg.jpg","assets/images/bg.jpg","assets/images/bg.jpg","assets/images/bg.jpg",
      "assets/images/bg.jpg","assets/images/bg.jpg","assets/images/bg.jpg","assets/images/bg.jpg","assets/images/bg.jpg"];

  var color= [Colors.yellow, Colors.blue,Colors.green,Colors.greenAccent,Colors.deepPurple,Colors.yellow, Colors.blue,Colors.green,Colors.greenAccent,Colors.deepPurple];
  var iconss=
  [Icons.account_balance,
    Icons.add_alert,
    Icons.access_alarms_rounded,
    Icons.add_circle,
    Icons.ac_unit,
    Icons.insert_comment_rounded];
  var data=[
  "account_balance",
  "add_alert",
  "access_alarms_rounded",
  "add_circle",
  "ac_unit",
  "insert_comment_rounded"
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            backgroundColor: Colors.green[200],
            title: Text("CustomScrollView"),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
              IconButton(onPressed: (){}, icon: Icon(Icons.favorite))

            ],
            bottom: AppBar(
              title: Container(
                
                color: Colors.white,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    
                    hintText: "search something...",
                    prefixIcon: Icon(Icons.search)
                  ),
                  
                ),
              ),

            ),
            expandedHeight: 140,
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 50,
              child: Text("Sliver List",style: TextStyle(fontSize: 30,fontWeight:FontWeight.w500),),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return Card(
              color: color[index],
              child: ListTile(
                leading:Image(image: AssetImage(image[index])),
                title: Text(name[index]),
                subtitle: Text(phone[index]),
              ),
            );
            
            
          },childCount: name.length)),
          SliverToBoxAdapter(
            child: Container(
              height: 50,
              child: Text("Sliver Grid ",style: TextStyle(fontSize: 30,fontWeight:FontWeight.w500),),
            ),
          ),
          SliverGrid(delegate: SliverChildBuilderDelegate(
                  (context,index){
            return Card(color: color[index],
              child: Column(
                children: [
                  Text(data[index]),
                  Icon(iconss[index])
                ],
              ),
            );

          },childCount: data.length), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)
          ),

    

        ],
      ),
    );
  }
}
