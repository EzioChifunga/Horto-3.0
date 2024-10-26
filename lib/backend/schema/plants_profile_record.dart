import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlantsProfileRecord extends FirestoreRecord {
  PlantsProfileRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "nomeCientifico" field.
  String? _nomeCientifico;
  String get nomeCientifico => _nomeCientifico ?? '';
  bool hasNomeCientifico() => _nomeCientifico != null;

  // "familia" field.
  String? _familia;
  String get familia => _familia ?? '';
  bool hasFamilia() => _familia != null;

  // "origem" field.
  List<String>? _origem;
  List<String> get origem => _origem ?? const [];
  bool hasOrigem() => _origem != null;

  // "parteUtilizada" field.
  String? _parteUtilizada;
  String get parteUtilizada => _parteUtilizada ?? '';
  bool hasParteUtilizada() => _parteUtilizada != null;

  // "detalheDescricoes" field.
  List<String>? _detalheDescricoes;
  List<String> get detalheDescricoes => _detalheDescricoes ?? const [];
  bool hasDetalheDescricoes() => _detalheDescricoes != null;

  // "profileImage" field.
  String? _profileImage;
  String get profileImage => _profileImage ?? '';
  bool hasProfileImage() => _profileImage != null;

  // "sentidosCaptados" field.
  List<String>? _sentidosCaptados;
  List<String> get sentidosCaptados => _sentidosCaptados ?? const [];
  bool hasSentidosCaptados() => _sentidosCaptados != null;

  // "detalhesLista" field.
  List<DetalhesEspecieStruct>? _detalhesLista;
  List<DetalhesEspecieStruct> get detalhesLista => _detalhesLista ?? const [];
  bool hasDetalhesLista() => _detalhesLista != null;

  // "imagensComplementares" field.
  List<String>? _imagensComplementares;
  List<String> get imagensComplementares => _imagensComplementares ?? const [];
  bool hasImagensComplementares() => _imagensComplementares != null;

  // "nomesPopulares" field.
  List<String>? _nomesPopulares;
  List<String> get nomesPopulares => _nomesPopulares ?? const [];
  bool hasNomesPopulares() => _nomesPopulares != null;

  // "detalheTitulos" field.
  List<String>? _detalheTitulos;
  List<String> get detalheTitulos => _detalheTitulos ?? const [];
  bool hasDetalheTitulos() => _detalheTitulos != null;

  // "audioDescricao" field.
  String? _audioDescricao;
  String get audioDescricao => _audioDescricao ?? '';
  bool hasAudioDescricao() => _audioDescricao != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _nomeCientifico = snapshotData['nomeCientifico'] as String?;
    _familia = snapshotData['familia'] as String?;
    _origem = getDataList(snapshotData['origem']);
    _parteUtilizada = snapshotData['parteUtilizada'] as String?;
    _detalheDescricoes = getDataList(snapshotData['detalheDescricoes']);
    _profileImage = snapshotData['profileImage'] as String?;
    _sentidosCaptados = getDataList(snapshotData['sentidosCaptados']);
    _detalhesLista = getStructList(
      snapshotData['detalhesLista'],
      DetalhesEspecieStruct.fromMap,
    );
    _imagensComplementares = getDataList(snapshotData['imagensComplementares']);
    _nomesPopulares = getDataList(snapshotData['nomesPopulares']);
    _detalheTitulos = getDataList(snapshotData['detalheTitulos']);
    _audioDescricao = snapshotData['audioDescricao'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('plantsProfile');

  static Stream<PlantsProfileRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PlantsProfileRecord.fromSnapshot(s));

  static Future<PlantsProfileRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PlantsProfileRecord.fromSnapshot(s));

  static PlantsProfileRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PlantsProfileRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PlantsProfileRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PlantsProfileRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PlantsProfileRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PlantsProfileRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPlantsProfileRecordData({
  String? nome,
  String? nomeCientifico,
  String? familia,
  String? parteUtilizada,
  String? profileImage,
  String? audioDescricao,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'nomeCientifico': nomeCientifico,
      'familia': familia,
      'parteUtilizada': parteUtilizada,
      'profileImage': profileImage,
      'audioDescricao': audioDescricao,
    }.withoutNulls,
  );

  return firestoreData;
}

class PlantsProfileRecordDocumentEquality
    implements Equality<PlantsProfileRecord> {
  const PlantsProfileRecordDocumentEquality();

  @override
  bool equals(PlantsProfileRecord? e1, PlantsProfileRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nome == e2?.nome &&
        e1?.nomeCientifico == e2?.nomeCientifico &&
        e1?.familia == e2?.familia &&
        listEquality.equals(e1?.origem, e2?.origem) &&
        e1?.parteUtilizada == e2?.parteUtilizada &&
        listEquality.equals(e1?.detalheDescricoes, e2?.detalheDescricoes) &&
        e1?.profileImage == e2?.profileImage &&
        listEquality.equals(e1?.sentidosCaptados, e2?.sentidosCaptados) &&
        listEquality.equals(e1?.detalhesLista, e2?.detalhesLista) &&
        listEquality.equals(
            e1?.imagensComplementares, e2?.imagensComplementares) &&
        listEquality.equals(e1?.nomesPopulares, e2?.nomesPopulares) &&
        listEquality.equals(e1?.detalheTitulos, e2?.detalheTitulos) &&
        e1?.audioDescricao == e2?.audioDescricao;
  }

  @override
  int hash(PlantsProfileRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.nomeCientifico,
        e?.familia,
        e?.origem,
        e?.parteUtilizada,
        e?.detalheDescricoes,
        e?.profileImage,
        e?.sentidosCaptados,
        e?.detalhesLista,
        e?.imagensComplementares,
        e?.nomesPopulares,
        e?.detalheTitulos,
        e?.audioDescricao
      ]);

  @override
  bool isValidKey(Object? o) => o is PlantsProfileRecord;
}
