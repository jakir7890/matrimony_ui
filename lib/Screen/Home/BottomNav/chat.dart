import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class ChatPage extends StatefulWidget {

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
   List<Message> message = [
    Message(
      text: "Yes Sure!",
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false
    ),
    Message(
        text: "Yes Sure!",
        date: DateTime.now().subtract(Duration(days: 3 ,minutes: 3)),
        isSentByMe: true
    ),
    Message(
        text: "Yes Sure!",
        date: DateTime.now().subtract(Duration(days: 3,minutes: 4)),
        isSentByMe: false
    ),
    Message(
        text: "Yes Sure!",
        date: DateTime.now().subtract(Duration(minutes: 1)),
        isSentByMe: true
    ),
    Message(
        text: "Yes Sure!",
        date: DateTime.now().subtract(Duration(days: 3,minutes: 6)),
        isSentByMe: false
    ),
    Message(
        text: "Yes Sure!",
        date: DateTime.now().subtract(Duration(minutes: 1)),
        isSentByMe: true
    ),
    Message(
        text: "Yes Sure!",
        date: DateTime.now().subtract(Duration(minutes: 1)),
        isSentByMe: false
    ),
    Message(
        text: "Yes Sure!",
        date: DateTime.now().subtract(Duration(days: 4,minutes: 1)),
        isSentByMe: false
    ),
    Message(
        text: "Yes Sure!",
        date: DateTime.now().subtract(Duration(minutes: 1)),
        isSentByMe: true
    ),
    Message(
        text: "Yes Sure!",
        date: DateTime.now().subtract(Duration(days: 5,minutes: 1)),
        isSentByMe: false
    ),
    Message(
        text: "Yes Sure!",
        date: DateTime.now().subtract(Duration(minutes: 1)),
        isSentByMe: true
    ),
    Message(
        text: "Yes Sure!",
        date: DateTime.now().subtract(Duration(minutes: 1)),
        isSentByMe: false
    ),


  ].reversed.toList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.green.shade900,
      ),
      body: Column(
        children: [
          Expanded(child: GroupedListView<Message, DateTime>(
            padding: EdgeInsets.all(8),
            reverse: true,
            order: GroupedListOrder.DESC,
            useStickyGroupSeparators: true,
            floatingHeader: true,
            elements: message,
            groupBy: (message)=>
            DateTime(
              message.date.year,
              message.date.month,
              message.date.day,
            ),
            groupHeaderBuilder: (Message message)=> SizedBox(
              height: 40,
              child: Center(
                child: Card(
                  color: Colors.green.shade900,
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      DateFormat.yMMMd().format(message.date),
                       style: TextStyle(color: Colors.white),),
                  ),
                ),
              ),
            ),
            itemBuilder: (context, Message message)=> Align(
              alignment: message.isSentByMe?
               Alignment.centerRight
               :Alignment.centerLeft,
              child: Card(
                elevation: 8,
                child: Padding(padding: EdgeInsets.all(12),
                  child: Text(message.text),

                ),
              ),
            ),
          )
          ),

          Container(
            height: 70,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    
                  }, 
                  icon: Icon(Icons.photo),iconSize: 25,color: Colors.blue,),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'Type your message here...'
                    ),  
                    textCapitalization: TextCapitalization.sentences,              
                  ),
                  ),
                   IconButton(
                  onPressed: () {
                    
                  }, 
                  icon: Icon(Icons.send),iconSize: 25,color: Colors.green,),
              ],
            ),
          )

         
         
        ],
      ),
    );
  }
}



class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;
  Message({
    required this.text,
    required this.date,
    required this.isSentByMe}
      );
      
        add(Message message) {}
}
