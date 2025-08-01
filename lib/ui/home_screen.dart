import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:test_dating_site/core/models/message_user/message_user.dart';

import 'package:test_dating_site/core/providers/chats_provider.dart';
import 'package:test_dating_site/ui/price_card.dart';
import 'navigation_menu.dart';

class DatingSite extends ConsumerWidget {
  const DatingSite({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chatsList = ref.watch(
      chatsProvider.select((state) => state.chatsList),
    );

    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: NavigationMenu(),
        backgroundColor: Color.fromARGB(220, 217, 217, 217),
        body: Stack(
          children: [
            Positioned(
              height: 200,
              child: Container(color: Colors.transparent),
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
                child: Column(
                  children: [
                    _buildAppBar(context),
                    _buildLikesRow(),
                    Expanded(child: _buildChatsList(chatsList, ref)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showScreenModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      // fromARGB(255, 13, 19, 51)
      builder: (context) {
        return FractionallySizedBox(
          heightFactor: 0.6,
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(color: Color.fromARGB(255, 13, 19, 51)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            color: Color.fromARGB(255, 141, 141, 141),
                          ),
                          onPressed: () => context.push('/'),
                        ),
                      ],
                    ),
                  ),
                  Image.asset('assets/image/mask_big.png', width: 200),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: 'РЕЖИМ '),
                          TextSpan(
                            text: 'ИНКОГНИТО ',
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                          TextSpan(text: 'НА 24 ЧАСА'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Text(
                      'Стань невидимкой в ленте и чатах, скрой объявление и наслаждайся <Space> незамеченным',
                      style: TextStyle(
                        color: Color.fromARGB(255, 141, 141, 141),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PriceCard(count: '1', price: '99 ₽'),
                        PriceCard(count: '3', price: '199 ₽', badgeText: 'Хит'),
                        PriceCard(
                          count: '7',
                          price: '399 ₽',
                          badgeText: '-42%',
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 170, 4, 74),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Купить',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: InkWell(
                      child: Text(
                        'УСЛОВИЯ И ПОЛОЖЕНИЯ',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'ЧАТЫ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Text(
            'OFF',
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                backgroundColor: const Color.fromARGB(255, 79, 79, 79),
              ),
              onPressed: () => _showScreenModal(context),
              child: Image.asset('assets/image/mask.png', height: 17),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLikesRow() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 17, right: 17),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 17),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color.fromARGB(255, 25, 34, 99),
            ),
            child: const FaIcon(
              FontAwesomeIcons.solidHeart,
              color: Color.fromARGB(254, 150, 104, 156),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              '44 человека тебя лайкнули',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChatsList(
    AsyncValue<List<MessageUser>> chatsList,
    WidgetRef ref,
  ) {
    return chatsList.when(
      error: (err, stack) => Center(child: Text('Ошибка: $err')),
      loading: () => const Center(child: CircularProgressIndicator()),
      data: (chats) {
        if (chats.isEmpty) {
          return const Center(child: Text('Чатов пока нет'));
        }
        return ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
          itemCount: chats.length,
          itemBuilder: (context, index) =>
              _buildChatItem(context, chats[index], ref),
        );
      },
    );
  }

  Widget _buildChatItem(BuildContext context, MessageUser chat, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.read(chatsProvider.notifier).stateUser(chat.user);
        context.push('/chats');
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(chat.user?.image ?? ''),
              radius: 30,
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chat.message?.time ?? '',
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
                Text(
                  chat.message?.lastMessage ?? '',
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
