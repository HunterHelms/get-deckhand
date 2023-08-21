// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends FFFirebaseStruct {
  UserStruct({
    String? firstName,
    String? lastName,
    int? zipCode,
    bool? isPremium,
    bool? isHiring,
    String? emailAddress,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _firstName = firstName,
        _lastName = lastName,
        _zipCode = zipCode,
        _isPremium = isPremium,
        _isHiring = isHiring,
        _emailAddress = emailAddress,
        super(firestoreUtilData);

  // "firstName" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;
  bool hasFirstName() => _firstName != null;

  // "lastName" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;
  bool hasLastName() => _lastName != null;

  // "zipCode" field.
  int? _zipCode;
  int get zipCode => _zipCode ?? 0;
  set zipCode(int? val) => _zipCode = val;
  void incrementZipCode(int amount) => _zipCode = zipCode + amount;
  bool hasZipCode() => _zipCode != null;

  // "isPremium" field.
  bool? _isPremium;
  bool get isPremium => _isPremium ?? false;
  set isPremium(bool? val) => _isPremium = val;
  bool hasIsPremium() => _isPremium != null;

  // "isHiring" field.
  bool? _isHiring;
  bool get isHiring => _isHiring ?? false;
  set isHiring(bool? val) => _isHiring = val;
  bool hasIsHiring() => _isHiring != null;

  // "emailAddress" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  set emailAddress(String? val) => _emailAddress = val;
  bool hasEmailAddress() => _emailAddress != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        firstName: data['firstName'] as String?,
        lastName: data['lastName'] as String?,
        zipCode: castToType<int>(data['zipCode']),
        isPremium: data['isPremium'] as bool?,
        isHiring: data['isHiring'] as bool?,
        emailAddress: data['emailAddress'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? UserStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'firstName': _firstName,
        'lastName': _lastName,
        'zipCode': _zipCode,
        'isPremium': _isPremium,
        'isHiring': _isHiring,
        'emailAddress': _emailAddress,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'firstName': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'lastName': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'zipCode': serializeParam(
          _zipCode,
          ParamType.int,
        ),
        'isPremium': serializeParam(
          _isPremium,
          ParamType.bool,
        ),
        'isHiring': serializeParam(
          _isHiring,
          ParamType.bool,
        ),
        'emailAddress': serializeParam(
          _emailAddress,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        firstName: deserializeParam(
          data['firstName'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['lastName'],
          ParamType.String,
          false,
        ),
        zipCode: deserializeParam(
          data['zipCode'],
          ParamType.int,
          false,
        ),
        isPremium: deserializeParam(
          data['isPremium'],
          ParamType.bool,
          false,
        ),
        isHiring: deserializeParam(
          data['isHiring'],
          ParamType.bool,
          false,
        ),
        emailAddress: deserializeParam(
          data['emailAddress'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        zipCode == other.zipCode &&
        isPremium == other.isPremium &&
        isHiring == other.isHiring &&
        emailAddress == other.emailAddress;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([firstName, lastName, zipCode, isPremium, isHiring, emailAddress]);
}

UserStruct createUserStruct({
  String? firstName,
  String? lastName,
  int? zipCode,
  bool? isPremium,
  bool? isHiring,
  String? emailAddress,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserStruct(
      firstName: firstName,
      lastName: lastName,
      zipCode: zipCode,
      isPremium: isPremium,
      isHiring: isHiring,
      emailAddress: emailAddress,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserStruct? updateUserStruct(
  UserStruct? user, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    user
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserStructData(
  Map<String, dynamic> firestoreData,
  UserStruct? user,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (user == null) {
    return;
  }
  if (user.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && user.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userData = getUserFirestoreData(user, forFieldValue);
  final nestedData = userData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = user.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserFirestoreData(
  UserStruct? user, [
  bool forFieldValue = false,
]) {
  if (user == null) {
    return {};
  }
  final firestoreData = mapToFirestore(user.toMap());

  // Add any Firestore field values
  user.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserListFirestoreData(
  List<UserStruct>? users,
) =>
    users?.map((e) => getUserFirestoreData(e, true)).toList() ?? [];
