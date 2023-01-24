import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_error.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'STT',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Speech to Text'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String lastWords = '';
  String lastError = '';
  String lastStatus = '';
  stt.SpeechToText speech = stt.SpeechToText();

  Future<void> _speak() async {
    bool available = await speech.initialize(
        onError: errorListener, onStatus: statusListener);
    if (available) {
      speech.listen(onResult: resultListener);
    } else {
      print("The user has denied the use of speech recognition.");
    }
  }

  Future<void> _stop() async {
    speech.stop();
  }

  void resultListener(SpeechRecognitionResult result) {
    setState(() {
      lastWords = result.recognizedWords;
    });
  }

  void errorListener(SpeechRecognitionError error) {
    setState(() {
      lastError = '${error.errorMsg} - ${error.permanent}';
    });
  }

  void statusListener(String status) {
    setState(() {
      lastStatus = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'say:$lastWords',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              'status: $lastStatus',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
            onPressed: _speak, child: const Icon(Icons.play_arrow)),
        FloatingActionButton(onPressed: _stop, child: const Icon(Icons.stop))
      ]),
    );
  }
}
