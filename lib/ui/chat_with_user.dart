import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:test_dating_site/core/providers/chats_provider.dart';

class ChatWithUser extends ConsumerWidget {
  const ChatWithUser({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectUser = ref.watch(chatsProvider.select((state) => state.user));

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 217, 217),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 200,
            child: Container(
              color: Colors.transparent,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40, left: 15, right: 15),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () => context.push('/'),
                          icon: Icon(
                            Icons.chevron_left_sharp,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              selectUser?.image ?? '',
                            ),
                            radius: 20,
                          ),
                        ),
                        Expanded(child: SizedBox.shrink()),
                        FaIcon(
                          FontAwesomeIcons.ellipsisVertical,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 116, 70, 172),
                      ),
                      child: Row(
                        children: [
                          Padding(padding: EdgeInsets.only(right: 5), child: Image.asset(
                            'assets/image/raketa.png',
                            fit: BoxFit.fill,
                            height: 20,
                          ),),
                          Expanded(
                            child: Text(
                              '2 общих соблазна',
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.xmark,
                            size: 16,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            top: 200,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                color: Color.fromARGB(255, 33, 32, 32),
              ),
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text(
                      'Начни общение',
                      style: TextStyle(
                        color: Color.fromARGB(255, 141, 141, 141),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15,
                    right: 15,
                    bottom: 50,
                    child: Row(
                      children: [
                        Icon(
                          Icons.add,
                          color: Color.fromARGB(255, 141, 141, 141),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Color.fromARGB(255, 141, 141, 141),
                                  width: 1.5,
                                ),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Сообщение...',
                                        hintStyle: TextStyle(
                                          color: Color.fromARGB(255, 141, 141, 141),
                                        ),
                                        border: InputBorder.none,
                                        isDense: true,
                                        contentPadding: EdgeInsets.zero,
                                      ),

                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/image/ino.png',
                                    fit: BoxFit.cover,
                                    height: 20,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.mic_none,
                          color: Color.fromARGB(255, 141, 141, 141),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
