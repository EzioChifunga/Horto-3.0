import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

bool searchPlant(
  List<PlantsProfileRecord> plants,
  String? qrCodeString,
) {
  if (qrCodeString == null || qrCodeString.isEmpty) {
    return false;
  }

  for (var plant in plants) {
    if (plant.nomeCientifico == qrCodeString) {
      return true;
    }
  }

  return false;
}

PlantsProfileRecord? foundedPlant(
  List<PlantsProfileRecord> plants,
  String? qrCodeText,
) {
  for (var plant in plants) {
    if (plant.nomeCientifico == qrCodeText) {
      return plant;
    }
  }
  return null;
}

String? juntarTextos(List<String>? listaStrings) {
  if (listaStrings == null || listaStrings.isEmpty) {
    return null;
  }
  return listaStrings.join(', ');
}
