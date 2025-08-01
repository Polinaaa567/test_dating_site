import 'package:test_dating_site/core/models/email/message.dart';
import 'package:test_dating_site/core/models/message_user/message_user.dart';
import 'package:test_dating_site/core/models/users/users.dart';

abstract class IChatsRepository {
  Future<List<MessageUser>> fetchAllChats();
}

class ChatsRepository implements IChatsRepository {
  @override
  Future<List<MessageUser>> fetchAllChats() async {
    final List<MessageUser> chats = [];
    chats.add(
      MessageUser(
        user: Users(image: 'assets/image/1.jpg'),
        message: Message(lastMessage: 'Отлично выглядишь', time: '23 ч 43 мин'),
      ),
    );

    chats.add(
      MessageUser(
        user: Users(image: 'assets/image/2.jpg'),
        message: Message(lastMessage: 'Встретимся? Я рядом', time: '20 ч 40 мин'),
      ),
    );

    chats.add(
      MessageUser(
        user: Users(image: 'assets/image/3.jpg'),
        message: Message(lastMessage: 'Встретимся?', time: '18 ч 40 мин'),
      ),
    );

    chats.add(
      MessageUser(
        user: Users(image: 'assets/image/4.jpg'),
        message: Message(lastMessage: 'Давно тебя хочу', time: '09 ч 40 мин'),
      ),
    );

    chats.add(
      MessageUser(
        user: Users(image: 'assets/image/5.jpg'),
        message: Message(lastMessage: 'Я в ванной.. Скинь фото...', time: '03 ч 04 мин'),
      ),
    );

    chats.add(
      MessageUser(
        user: Users(image: 'assets/image/6.jpg'),
        message: Message(lastMessage: 'Привет', time: '01 ч 09 мин'),
      ),
    );

    return chats;
  }
}
