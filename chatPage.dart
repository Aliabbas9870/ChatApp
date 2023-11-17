import "package:flutter/material.dart";
import "package:whatsapp/usermodel/usermodel.dart";
import "package:whatsapp/whatsappScreen/messageP.dart";

class ChateS extends StatefulWidget {
  const ChateS({super.key});

  @override
  State<ChateS> createState() => _ChateSState();
}

class _ChateSState extends State<ChateS> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 206, 191, 191),
      child: ListView.builder(
          itemCount: modelData.length,
          itemBuilder: (context, i) => Column(
                children: [
                  Divider(
                    height: 8,
                  ),
                  ListTile(
                      leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          backgroundImage: AssetImage(modelData[i].avatar)),
                      title: Text(modelData[i].name),
                      subtitle: Text(modelData[i].message),
                      trailing: Text(modelData[i].time),
                      onTap: () {
                        print("Details Opern");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => chatDetails()));
                      })
                ],
              )),
    );
  }
}

class chatDetails extends StatelessWidget {
  const chatDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Row(
          children: [
            CircleAvatar(
                radius: 13,
                backgroundImage: AssetImage("assets/images/gl2.jpeg")),
            Padding(
              padding: EdgeInsets.only(left: 7.0),
              child: Text(
                "Rabia",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.video_call),
          ),
          SizedBox(
            width: 20,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          SizedBox(
            width: 20,
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(children: [
        Expanded(
          child: messageP(),
        ),
        Container(
            padding: EdgeInsets.all(12),
            alignment: Alignment.bottomCenter,
            child: Row(children: [
              Flexible(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Type a Message",
                    suffix:Text("Message"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(width: 0.0, color: const Color.fromARGB(255, 138, 192, 219)),
                    ),
                  ),
                ),
              )
            ])),
      ]),
    );
  }
}
