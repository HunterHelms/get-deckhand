import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobsV1Record extends FirestoreRecord {
  JobsV1Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "jobTitle" field.
  String? _jobTitle;
  String get jobTitle => _jobTitle ?? '';
  bool hasJobTitle() => _jobTitle != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "vesselName" field.
  String? _vesselName;
  String get vesselName => _vesselName ?? '';
  bool hasVesselName() => _vesselName != null;

  // "vesselLength" field.
  int? _vesselLength;
  int get vesselLength => _vesselLength ?? 0;
  bool hasVesselLength() => _vesselLength != null;

  // "jobDuration" field.
  String? _jobDuration;
  String get jobDuration => _jobDuration ?? '';
  bool hasJobDuration() => _jobDuration != null;

  // "portOfDeparture" field.
  String? _portOfDeparture;
  String get portOfDeparture => _portOfDeparture ?? '';
  bool hasPortOfDeparture() => _portOfDeparture != null;

  // "Address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "minExp" field.
  String? _minExp;
  String get minExp => _minExp ?? '';
  bool hasMinExp() => _minExp != null;

  // "reqCert" field.
  String? _reqCert;
  String get reqCert => _reqCert ?? '';
  bool hasReqCert() => _reqCert != null;

  // "dutiesRes" field.
  String? _dutiesRes;
  String get dutiesRes => _dutiesRes ?? '';
  bool hasDutiesRes() => _dutiesRes != null;

  // "salary" field.
  String? _salary;
  String get salary => _salary ?? '';
  bool hasSalary() => _salary != null;

  void _initializeFields() {
    _jobTitle = snapshotData['jobTitle'] as String?;
    _company = snapshotData['company'] as String?;
    _vesselName = snapshotData['vesselName'] as String?;
    _vesselLength = castToType<int>(snapshotData['vesselLength']);
    _jobDuration = snapshotData['jobDuration'] as String?;
    _portOfDeparture = snapshotData['portOfDeparture'] as String?;
    _address = snapshotData['Address'] as String?;
    _minExp = snapshotData['minExp'] as String?;
    _reqCert = snapshotData['reqCert'] as String?;
    _dutiesRes = snapshotData['dutiesRes'] as String?;
    _salary = snapshotData['salary'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jobs_v1');

  static Stream<JobsV1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobsV1Record.fromSnapshot(s));

  static Future<JobsV1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobsV1Record.fromSnapshot(s));

  static JobsV1Record fromSnapshot(DocumentSnapshot snapshot) => JobsV1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobsV1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobsV1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobsV1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobsV1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobsV1RecordData({
  String? jobTitle,
  String? company,
  String? vesselName,
  int? vesselLength,
  String? jobDuration,
  String? portOfDeparture,
  String? address,
  String? minExp,
  String? reqCert,
  String? dutiesRes,
  String? salary,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'jobTitle': jobTitle,
      'company': company,
      'vesselName': vesselName,
      'vesselLength': vesselLength,
      'jobDuration': jobDuration,
      'portOfDeparture': portOfDeparture,
      'Address': address,
      'minExp': minExp,
      'reqCert': reqCert,
      'dutiesRes': dutiesRes,
      'salary': salary,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobsV1RecordDocumentEquality implements Equality<JobsV1Record> {
  const JobsV1RecordDocumentEquality();

  @override
  bool equals(JobsV1Record? e1, JobsV1Record? e2) {
    return e1?.jobTitle == e2?.jobTitle &&
        e1?.company == e2?.company &&
        e1?.vesselName == e2?.vesselName &&
        e1?.vesselLength == e2?.vesselLength &&
        e1?.jobDuration == e2?.jobDuration &&
        e1?.portOfDeparture == e2?.portOfDeparture &&
        e1?.address == e2?.address &&
        e1?.minExp == e2?.minExp &&
        e1?.reqCert == e2?.reqCert &&
        e1?.dutiesRes == e2?.dutiesRes &&
        e1?.salary == e2?.salary;
  }

  @override
  int hash(JobsV1Record? e) => const ListEquality().hash([
        e?.jobTitle,
        e?.company,
        e?.vesselName,
        e?.vesselLength,
        e?.jobDuration,
        e?.portOfDeparture,
        e?.address,
        e?.minExp,
        e?.reqCert,
        e?.dutiesRes,
        e?.salary
      ]);

  @override
  bool isValidKey(Object? o) => o is JobsV1Record;
}
