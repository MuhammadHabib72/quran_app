import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:permission_handler/permission_handler.dart';

class SurahDetailPage extends StatefulWidget {
  final List<String> surahText;

  const SurahDetailPage({Key? key, required this.surahText}) : super(key: key);

  @override
  _SurahDetailPageState createState() => _SurahDetailPageState();
}

class _SurahDetailPageState extends State<SurahDetailPage> {
  late stt.SpeechToText _speech;
  bool _isListening = false;
  String _recognizedWords = '';

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
  }

  // Request microphone permission
  void _requestMicPermission() async {
    var status = await Permission.microphone.status;
    if (status.isDenied || status.isRestricted) {
      await Permission.microphone.request();
    }
  }

  // Start listening to the microphone
  void _startListening() async {
    _requestMicPermission();
    bool available = await _speech.initialize(
      onStatus: (val) => print('onStatus: $val'),
      onError: (val) => print('onError: $val'),
    );
    if (available) {
      setState(() => _isListening = true);
      _speech.listen(onResult: (val) {
        setState(() {
          _recognizedWords = val.recognizedWords;
        });
      });
    }
  }

  // Stop listening to the microphone
  void _stopListening() {
    _speech.stop();
    setState(() => _isListening = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Quran',
          style: TextStyle(
            fontFamily: "Arial",
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: const Color.fromRGBO(141, 59, 223, 1),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                    style: TextStyle(fontFamily: "Arial", color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Yasin\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color.fromRGBO(48, 7, 89, 1),
                        ),
                      ),
                      TextSpan(
                        text: 'Verse 36\n(Words Of God)\n\n',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(157, 29, 242, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: widget.surahText.length,
                    itemBuilder: (context, index) {
                      final word = widget.surahText[index];
                      final isHighlighted =
                          _recognizedWords.contains(word.trim());

                      return Center(
                        child: Text(
                          word,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: isHighlighted
                                ? Colors.green
                                : const Color.fromRGBO(48, 7, 89, 1),
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    _recognizedWords,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(141, 59, 223, 0.6),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(31, 255, 255, 255),
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: IconButton(
                icon: Icon(_isListening ? Icons.mic : Icons.mic_none,
                    color: Colors.white),
                onPressed: _isListening ? _stopListening : _startListening,
                iconSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
