import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/color.dart';

class MessageDetails extends StatefulWidget {
  final String name;
  final String profile;
  const MessageDetails({super.key, required this.name, required this.profile});

  @override
  State<MessageDetails> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessageDetails> {

  List<Map> messageList = [
    {
      "message": "Assalamuyalaikum",
      "is_me": true,
      "time": "10:00 am",
    },
    {
      "message": "What is your name",
      "is_me": false,
      "time": "10:00 am",
    },
    {
      "message": "my name is rimu",
      "is_me": true,
      "time": "10:00 am",
    },
    {
      "message": "do i know you",
      "is_me": false,
      "time": "10:00 am",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColor.whiteShade,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: AppColor.whiteColor,
            )),
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 20,
            child: Image.asset(
              widget.profile,
              fit: BoxFit.fill,
              height: 20,
              width: 20,
            ),
          ),
          title: Text(
            widget.name,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          subtitle: Text(
            "last seen today at 12:04 pm",
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: AppColor.whiteColor),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.video_call_outlined,
                color: AppColor.whiteColor,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call_outlined,
                color: AppColor.whiteColor,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: AppColor.whiteColor,
              )),
        ],
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: messageList.length,
          itemBuilder: (context, index) {
            return  Column(
                crossAxisAlignment:messageList [index] ['is_me'] == true?
             CrossAxisAlignment.end:
             CrossAxisAlignment.start,


              children: [
                Container(
                    constraints: BoxConstraints(
                      maxWidth: size.width *0.7,
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color:messageList [index] ['is_me'] == true? Colors.green:
                        Colors.grey,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(messageList[index]['message']),
                    )),
              ],
            );

          },

      ),


      /* body: Column(children: [

      ],),*/
    );
  }
}
