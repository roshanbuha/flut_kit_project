import 'package:flutter/material.dart';
import 'package:flutter_dialogflow_v2/flutter_dialogflow_v2.dart' as df;

class ChatbotDialogflow extends StatefulWidget {
  ChatbotDialogflow({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _ChatbotDialogflowState createState() => _ChatbotDialogflowState();
}

class _ChatbotDialogflowState extends State<ChatbotDialogflow> {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = TextEditingController();

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                    const InputDecoration.collapsed(hintText: 'Send a message'),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () => _handleSubmitted(_textController.text)),
            ),
            const SizedBox(height: 100)
          ],
        ),
      ),
    );
  }

  void response(query) async {
    _textController.clear();
    df.AuthGoogle authGoogle =
        await df.AuthGoogle(fileJson: 'assets/chat-ekwe-ba2ea4437a38.json')
            .build();
    df.Dialogflow dialogflow =
        df.Dialogflow(authGoogle: authGoogle, sessionId: '123456');
    df.DetectIntentResponse response =
        await dialogflow.detectIntentFromText(query, "id");
    ChatMessage message = ChatMessage(
      text: response.responseId,
      name: 'Munaroh',
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
      name: 'Djanuar',
      type: true,
    );
    setState(() {
      _messages.insert(0, message);
    });
    response(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Chat Me'),
      ),
      body: Column(children: <Widget>[
        Flexible(
            child: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          reverse: true,
          itemBuilder: (_, int index) => _messages[index],
          itemCount: _messages.length,
        )),
        const Divider(height: 1.0),
        Container(
          decoration: BoxDecoration(color: Theme.of(context).cardColor),
          child: _buildTextComposer(),
        ),
      ]),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.name, required this.type});

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
            Text("$name", style: const TextStyle(fontWeight: FontWeight.bold)),
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
            Text("$name", style: Theme.of(context).textTheme.bodySmall),
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
            backgroundImage: AssetImage("assets/cook/profile_1.jpeg")),
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
