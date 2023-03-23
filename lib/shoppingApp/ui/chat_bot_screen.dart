import 'package:flutter/material.dart';
import 'package:flutter_dialogflow_v2/flutter_dialogflow_v2.dart' as df;

class ChatbotDialogflow extends StatefulWidget {
  const ChatbotDialogflow({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State createState() => _ChatbotDialogflowState();
}

class _ChatbotDialogflowState extends State<ChatbotDialogflow> {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = TextEditingController();

  void response(query, String text) async {
    _textController.clear();
    df.AuthGoogle authGoogle =
        await df.AuthGoogle(fileJson: 'assets/chat-ekwe-ba2ea4437a38.json')
            .build();
    df.Dialogflow dialogflow =
        df.Dialogflow(authGoogle: authGoogle, sessionId: '123456');
    await dialogflow.detectIntentFromText(
        query, df.Language.spanishLatinAmerica);
    ChatMessage message = ChatMessage(
      text: text,
      name: 'Chirag',
      type: false,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = ChatMessage(
      text: text,
      name: 'Roshan',
      type: true,
    );
    setState(() {
      _messages.insert(0, message);
    });
    response(text, text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: const Text('Chat bot'),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: _textController,
              onSubmitted: _handleSubmitted,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.all(15),
                hintText: 'Send a message',
                hintStyle: TextStyle(
                  color: Colors.white,
                ),
                border: InputBorder.none,
              ),
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(width: 15),
        CircleAvatar(
          backgroundColor: Colors.black,
          child: IconButton(
            icon: const Icon(
              Icons.send,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () => _handleSubmitted(_textController.text),
          ),
        ),
        const SizedBox(height: 100)
      ],
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({
    super.key,
    this.text,
    this.name,
    required this.type,
  });

  String? text;
  String? name;
  bool type;

  List<Widget> otherMessage(context) {
    return <Widget>[
      Container(
        margin: const EdgeInsets.only(right: 16.0),
        child: const CircleAvatar(
          backgroundImage: AssetImage("assets/cook/profile_1.jpeg"),
        ),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "$name",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Text("$text"),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> myMessage(context) {
    return <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              "$name",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Text("$text"),
            ),
          ],
        ),
      ),
      Container(
        margin: const EdgeInsets.only(left: 16.0),
        child: const CircleAvatar(
          backgroundImage: AssetImage("assets/cook/profile_1.jpeg"),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: type ? myMessage(context) : otherMessage(context),
      ),
    );
  }
}
