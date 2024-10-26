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

import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<String?> searchPlantByName(String plantName) async {
  try {
    String searchText = plantName.toLowerCase().replaceAll('-', ' ').trim();
    print(searchText);

    // Verifica se o SpeechStop está ativo
    if (FFAppState().SpeechStop) {
      print('Ação interrompida pelo SpeechStop.');
      return null;
    }

    // Referência à coleção "plantsProfile"
    CollectionReference plants =
        FirebaseFirestore.instance.collection('plantsProfile');

    // Buscar todos os documentos na coleção
    QuerySnapshot querySnapshot = await plants.get();

    for (DocumentSnapshot plantDoc in querySnapshot.docs) {
      // Verifica se o SpeechStop está ativo
      if (FFAppState().SpeechStop) {
        print('Ação interrompida pelo SpeechStop.');
        return null;
      }

      // Obter o nome da planta do banco de dados
      String storedName = plantDoc.get('nome') as String;

      // Converter o nome armazenado para lowercase e substituir hifens por espaços
      String storedNameLowercase =
          storedName.toLowerCase().replaceAll('-', ' ').trim();
      print(storedNameLowercase);

      // Comparar o nome da planta em lowercase
      if (storedNameLowercase == searchText) {
        // Verifica se o SpeechStop está ativo
        if (FFAppState().SpeechStop) {
          print('Ação interrompida pelo SpeechStop.');
          return null;
        }

        // Retornar o valor do campo nomeCientifico
        return plantDoc.get('nomeCientifico') as String?;
      }

      // Se o nome não bater, verificar no vetor 'nomesPopulares'
      List<dynamic> nomesPopulares =
          plantDoc.get('nomesPopulares') as List<dynamic>;
      for (var nomePopular in nomesPopulares) {
        // Verifica se o SpeechStop está ativo
        if (FFAppState().SpeechStop) {
          print('Ação interrompida pelo SpeechStop.');
          return null;
        }

        String nomePopularLowercase =
            (nomePopular as String).toLowerCase().replaceAll('-', ' ').trim();
        print(nomePopularLowercase);
        if (nomePopularLowercase == searchText) {
          // Retornar o valor do campo nomeCientifico
          return plantDoc.get('nomeCientifico') as String?;
        }
      }
    }

    print('Planta não encontrada');
    return null;
  } catch (e) {
    print('Erro ao buscar planta: $e');
    return null;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
