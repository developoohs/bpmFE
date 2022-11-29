class unit {
  List<Results>? _result;

  unit({List<Results>? result}) {
    if (result != null) {
      this._result = result;
    }
  }

  List<Results>? get result => _result;
  set result(List<Results>? result) => _result = result;

  unit.fromJson(Map<String, dynamic> json) {
    if (json['result'] != null) {
      _result = <Results>[];
      json['result'].forEach((v) {
        _result!.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._result != null) {
      data['result'] = this._result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}


class Results {
  String? _unit;

  Result({String? unit}) {
    if (unit != null) {
      this._unit = unit;
    }
  }

  String? get unit => _unit;
  set unit(String? unit) => _unit = unit;

  Results.fromJson(Map<String, dynamic> json) {
    _unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['unit'] = this._unit;
    return data;
  }
}