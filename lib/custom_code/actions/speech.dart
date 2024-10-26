// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'dart:async';

Future speech() async {
  final completer = Completer(); // Usado para aguardar a conclusão da escuta
  final stt.SpeechToText speech = stt.SpeechToText();

  // Verifica se o SpeechStop está ativo antes de inicializar
  if (FFAppState().SpeechStop) {
    print('Ação interrompida antes da inicialização do Speech.');
    return null;
  }

  bool isInitialized = await speech.initialize();

  if (isInitialized) {
    final systemLocale = await speech.systemLocale();
    final String _currentLocaleId = systemLocale?.localeId ?? '';

    // Verifica se o SpeechStop está ativo antes de começar a escuta
    if (FFAppState().SpeechStop) {
      print('Ação interrompida antes de começar a escuta.');
      return null;
    }

    speech.listen(
      onResult: (result) {
        // Verifica se o SpeechStop está ativo durante a escuta
        if (FFAppState().SpeechStop) {
          print('Ação interrompida durante a escuta.');
          speech.stop(); // Para a escuta
          completer.complete(); // Completa a Future para liberar o controle
          return;
        }

        if (result.finalResult) {
          FFAppState().update(() {
            FFAppState().SpeechText = '${result.recognizedWords}';
            completer.complete();
          });
        } else {
          FFAppState().update(() {
            FFAppState().SpeechText = '${result.recognizedWords}';
          });
        }
      },
      listenFor: Duration(seconds: 30),
      pauseFor: Duration(seconds: 3),
      partialResults: true,
      localeId: _currentLocaleId,
      onSoundLevelChange: (level) {},
      cancelOnError: true,
      listenMode: stt.ListenMode.confirmation,
    );
  } else {
    completer.complete(); // Completa a Future caso a inicialização falhe
  }

  return completer.future;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
