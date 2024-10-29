import 'package:flutter/material.dart';
import 'package:julyfultter/sqflite/sqflitehelper.dart';
void main() {
  runApp(MaterialApp(
    home: MainSQL(),
  ));
}

class MainSQL extends StatefulWidget {

  @override
  State<MainSQL> createState() => _MainSQLState();
}

class _MainSQLState extends State<MainSQL> {
  bool isLoading = true;
  List<Map<String, dynamic>> note_from_db = [];
  @override
  void initState() {
    // refreshing the ui
    refreshData();
    super.initState();
  }

  void refreshData() async {
    final datas = await SQLHelper.readNotes();
    setState(() {
      note_from_db = datas;
      isLoading = false;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyNotes"),
      ),
      body: isLoading
          ?  Center(child: Text("No Data"))
          :
      ListView.builder(

          itemCount: note_from_db.length,

          itemBuilder: (context, index) {

            return Card(
              child: ListTile(

                title: Text("${note_from_db[index]['title']}"),
                subtitle: Text(note_from_db[index]['subtitle']),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            showForm(note_from_db[index]['id']);
                          },
                          icon: const Icon(Icons.edit)),
                      IconButton(
                          onPressed: () {
                           deletednote(note_from_db[index]['id']);
                          },
                          icon: const Icon(Icons.delete)),
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>showForm(null),
        child: const Icon(Icons.add),
      ),
    );
  }

  final title = TextEditingController();
  final subtitle = TextEditingController();

  void showForm(int? id) async {
   if(id!=null){
     final exisistdata=note_from_db.firstWhere((note)=>note["id"]==id);
     title.text=exisistdata["title"];
     subtitle.text=exisistdata["subtitle"];
   }


    showModalBottomSheet(
        context: context,

        isScrollControlled: true,
        builder: (context) => Container(
          padding: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
              bottom: MediaQuery.of(context).viewInsets.bottom + 120),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: title,
                decoration: const InputDecoration(
                    hintText: "Title", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: subtitle,
                decoration: const InputDecoration(
                    hintText: "Enter note", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (id == null) {
                    await addNote();
                  }
                  if (id != null) {
                    await updatenote(id);
                  }
                  title.text="";
                  subtitle.text="";
                  Navigator.of(context).pop();

                },

                child: Text(id == null ? 'ADD NOTE' : "UPDATE"),
              )
            ],
          ),
        ));
  }

  Future addNote() async {
    await SQLHelper.createNote(title.text, subtitle.text);
    refreshData();
  }

  Future updatenote(int id) async{
     await SQLHelper.updatenote(id, title.text, subtitle.text);
     refreshData();

  }

  void deletednote(int id) async{
    await SQLHelper.deletenote(id);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Deleted")));
    refreshData();
  }

}
