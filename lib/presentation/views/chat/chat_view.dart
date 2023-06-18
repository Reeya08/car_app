import 'package:car_app/presentation/elements/custom_chat_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Row(
              children: [
                 const SizedBox(
                  width: 20,
                ),
                Image.asset('assets/images/arrow_green.png',color: const Color(0xff5AA5B5),),
                 const SizedBox(
                  width: 30,
                ),
                 const Text(
                  'Chats',
                  style: TextStyle(
                    fontSize: 23,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            const Divider(color: Color(0xffD4D4D4) ,),
            ListTile(
              leading: Image.asset('assets/images/chat_arlene.png'),
              title: const Text(
                'Arlene McCoy',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: const Text(
                'Hi sir, i am having trouble, please...',
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: Column(
                children: [
                  const Text(
                    'Just Now',
                    style: TextStyle(
                      fontSize: 9,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      color: Color(0xff111111),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const CircleAvatar(
                    radius: 14,
                    backgroundColor: Color(0xff5AA5B5),
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontSize: 9,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Color(0xffD4D4D4),),
            const CustomChatTile(leadingImage: 'assets/images/chat_wade.png',
                title: 'Wade Warren', subTitle: 'Lorem Impsum sit emit', trailing: 'September 9, 2013',color: Color(0xffB4B4B4),),
            const Divider(color: Color(0xffD4D4D4),),
            ListTile(
              leading: Image.asset('assets/images/chat_esther.png'),
              title: const Text(
                'Esther Howard',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: const Text(
                'Thank you soo much sir',
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'February 28, 2018',
                    style: TextStyle(
                      fontSize: 9,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      color: Color(0xff111111),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const CircleAvatar(
                    radius: 14,
                    backgroundColor: Color(0xff5AA5B5),
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontSize: 9,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Color(0xffD4D4D4),),
            ListTile(
              leading: Image.asset('assets/images/chat_brooklyn.png'),
              title: const Text(
                'Brooklyn Simmons',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: const Text(
                'Have a good day :)',
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'February 11, 2014',
                    style: TextStyle(
                      fontSize: 9,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                      color: Color(0xff111111),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const CircleAvatar(
                    radius: 14,
                    backgroundColor: Color(0xff5AA5B5),
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontSize: 9,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Color(0xffD4D4D4),),
            const CustomChatTile(leadingImage: 'assets/images/chat_jenny.png', title: 'Jenny Wilson', subTitle: 'Lorem Impsum sit emit', trailing: 'November 7, 2017',color: Color(0xffB4B4B4),),
            const Divider(color: Color(0xffD4D4D4),),
            const CustomChatTile(leadingImage: 'assets/images/chat_guy.png', title: 'Guy Hawkins', subTitle: 'Lorem Impsum sit emit', trailing: 'May 12, 2019',color: Color(0xffB4B4B4),),
            const Divider(color: Color(0xffD4D4D4),),
            const CustomChatTile(leadingImage: 'assets/images/chat_arlene.png', title: 'Robert Fox', subTitle: 'Lorem Impsum sit emit', trailing: '7d',color: Color(0xffB4B4B4),)
          ],
        ),
      ),
    );
  }
}


