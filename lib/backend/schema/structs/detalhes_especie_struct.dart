// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DetalhesEspecieStruct extends FFFirebaseStruct {
  DetalhesEspecieStruct({
    String? titulo,
    String? descricao,
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _titulo = titulo,
        _descricao = descricao,
        _image = image,
        super(firestoreUtilData);

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  set titulo(String? val) => _titulo = val;

  bool hasTitulo() => _titulo != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;

  bool hasDescricao() => _descricao != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static DetalhesEspecieStruct fromMap(Map<String, dynamic> data) =>
      DetalhesEspecieStruct(
        titulo: data['titulo'] as String?,
        descricao: data['descricao'] as String?,
        image: data['image'] as String?,
      );

  static DetalhesEspecieStruct? maybeFromMap(dynamic data) => data is Map
      ? DetalhesEspecieStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'titulo': _titulo,
        'descricao': _descricao,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'titulo': serializeParam(
          _titulo,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static DetalhesEspecieStruct fromSerializableMap(Map<String, dynamic> data) =>
      DetalhesEspecieStruct(
        titulo: deserializeParam(
          data['titulo'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DetalhesEspecieStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DetalhesEspecieStruct &&
        titulo == other.titulo &&
        descricao == other.descricao &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([titulo, descricao, image]);
}

DetalhesEspecieStruct createDetalhesEspecieStruct({
  String? titulo,
  String? descricao,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DetalhesEspecieStruct(
      titulo: titulo,
      descricao: descricao,
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DetalhesEspecieStruct? updateDetalhesEspecieStruct(
  DetalhesEspecieStruct? detalhesEspecie, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    detalhesEspecie
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDetalhesEspecieStructData(
  Map<String, dynamic> firestoreData,
  DetalhesEspecieStruct? detalhesEspecie,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (detalhesEspecie == null) {
    return;
  }
  if (detalhesEspecie.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && detalhesEspecie.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final detalhesEspecieData =
      getDetalhesEspecieFirestoreData(detalhesEspecie, forFieldValue);
  final nestedData =
      detalhesEspecieData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = detalhesEspecie.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDetalhesEspecieFirestoreData(
  DetalhesEspecieStruct? detalhesEspecie, [
  bool forFieldValue = false,
]) {
  if (detalhesEspecie == null) {
    return {};
  }
  final firestoreData = mapToFirestore(detalhesEspecie.toMap());

  // Add any Firestore field values
  detalhesEspecie.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDetalhesEspecieListFirestoreData(
  List<DetalhesEspecieStruct>? detalhesEspecies,
) =>
    detalhesEspecies
        ?.map((e) => getDetalhesEspecieFirestoreData(e, true))
        .toList() ??
    [];
