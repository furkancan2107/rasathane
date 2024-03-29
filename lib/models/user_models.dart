///
/// Code generated by jsonToDartModel https://ashamp.github.io/jsonToDartModel/
///
class DepremResult {
/*
{
  "mag": 2.7,
  "lng": 36.4963,
  "lat": 38.0567,
  "lokasyon": "HACIMIRZA-GOKSUN (KAHRAMANMARAS)",
  "depth": 4.3,
  "coordinates": [
    36.4963
  ],
  "title": "HACIMIRZA-GOKSUN (KAHRAMANMARAS)",
  "rev": null,
  "timestamp": 1675986112,
  "date_stamp": "2023-02-09",
  "date": "2023.02.10 02:41:52",
  "hash": "9bb576aa37d21704942b89585855547f",
  "hash2": "c0306ace061ff809aa8a5d19f7a6f684"
} 
*/

  double? mag;
  double? lng;
  double? lat;
  String? lokasyon;
  double? depth;
  List<double?>? coordinates;
  String? title;
  String? rev;
  int? timestamp;
  String? dateStamp;
  String? date;
  String? hash;
  String? hash2;

  DepremResult({
    this.mag,
    this.lng,
    this.lat,
    this.lokasyon,
    this.depth,
    this.coordinates,
    this.title,
    this.rev,
    this.timestamp,
    this.dateStamp,
    this.date,
    this.hash,
    this.hash2,
  });
  DepremResult.fromJson(Map<String, dynamic> json) {
    mag = json['mag']?.toDouble();
    lng = json['lng']?.toDouble();
    lat = json['lat']?.toDouble();
    lokasyon = json['lokasyon']?.toString();
    depth = json['depth']?.toDouble();
    if (json['coordinates'] != null) {
      final v = json['coordinates'];
      final arr0 = <double>[];
      v.forEach((v) {
        arr0.add(v.toDouble());
      });
      coordinates = arr0;
    }
    title = json['title']?.toString();
    rev = json['rev']?.toString();
    timestamp = json['timestamp']?.toInt();
    dateStamp = json['date_stamp']?.toString();
    date = json['date']?.toString();
    hash = json['hash']?.toString();
    hash2 = json['hash2']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['mag'] = mag;
    data['lng'] = lng;
    data['lat'] = lat;
    data['lokasyon'] = lokasyon;
    data['depth'] = depth;
    if (coordinates != null) {
      final v = coordinates;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v);
      });
      data['coordinates'] = arr0;
    }
    data['title'] = title;
    data['rev'] = rev;
    data['timestamp'] = timestamp;
    data['date_stamp'] = dateStamp;
    data['date'] = date;
    data['hash'] = hash;
    data['hash2'] = hash2;
    return data;
  }
}

class Deprem {
/*
{
  "status": true,
  "tryed": 0,
  "serverloadms": 254,
  "desc": "Gerçekten amacına uygun kullanın, Lütfen iletişimden çekinmeyin: info@orhanaydogdu.com.tr",
  "result": [
    {
      "mag": 2.7,
      "lng": 36.4963,
      "lat": 38.0567,
      "lokasyon": "HACIMIRZA-GOKSUN (KAHRAMANMARAS)",
      "depth": 4.3,
      "coordinates": [
        36.4963
      ],
      "title": "HACIMIRZA-GOKSUN (KAHRAMANMARAS)",
      "rev": null,
      "timestamp": 1675986112,
      "date_stamp": "2023-02-09",
      "date": "2023.02.10 02:41:52",
      "hash": "9bb576aa37d21704942b89585855547f",
      "hash2": "c0306ace061ff809aa8a5d19f7a6f684"
    }
  ]
} 
*/

  bool? status;
  int? tryed;
  int? serverloadms;
  String? desc;
  List<DepremResult?>? result;

  Deprem({
    this.status,
    this.tryed,
    this.serverloadms,
    this.desc,
    this.result,
  });
  Deprem.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    tryed = json['tryed']?.toInt();
    serverloadms = json['serverloadms']?.toInt();
    desc = json['desc']?.toString();
    if (json['result'] != null) {
      final v = json['result'];
      final arr0 = <DepremResult>[];
      v.forEach((v) {
        arr0.add(DepremResult.fromJson(v));
      });
      result = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['status'] = status;
    data['tryed'] = tryed;
    data['serverloadms'] = serverloadms;
    data['desc'] = desc;
    if (result != null) {
      final v = result;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['result'] = arr0;
    }
    return data;
  }
}
