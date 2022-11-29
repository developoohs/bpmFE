class StepResult {
//this will handel nested object
  int? id;
  String? description;
  int? level;
  String? name;

  StepResult({
    required this.id,
    required this.name,
    required this.description,
    required this.level,
  });

  factory StepResult.fromJson(Map<String, dynamic> json) {
    return StepResult(
        id: json['unit_id'],
        name: json['unit'],
        description: json['description'],
        level: json['level']);
  }
}
