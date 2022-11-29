

class ProcessResult {
  late int process_id,
      fk_unit_category,
      fk_unit_position,
      fk_unit,
      fk_demand_type,
      fk_demand_process,
      fk_check_category,
      fk_check_item,
      fk_process_estimation,
      fk_script,
      fk_demand_category,
      fk_demand,
      fk_demand_place,
      fk_check_type,
      fk_check_output,
      fk_process_output;

  ProcessResult(
      {required this.process_id,
      required this.fk_unit_category,
      required this.fk_unit,
      required this.fk_unit_position,
      required this.fk_demand_category,
      required this.fk_demand_type,
      required this.fk_demand,
      required this.fk_demand_place,
      required this.fk_demand_process,
      required this.fk_check_category,
      required this.fk_check_type,
      required this.fk_check_item,
      required this.fk_check_output,
      required this.fk_process_estimation,
      required this.fk_process_output,
      required this.fk_script});

  factory ProcessResult.fromJson(Map<String, dynamic> json) {
    return ProcessResult(
        process_id: json['process_id'],
        fk_unit_category: json['fk_unit_category'],
        fk_unit: json['fk_unit'],
        fk_unit_position: json['fk_unit_position'],
        fk_demand_category: json['fk_demand_category'],
        fk_demand_type: json['fk_demand_type'],
        fk_demand: json['fk_demand'],
        fk_demand_place: json['fk_demand_place'],
        fk_demand_process: json['fk_demand_process'],
        fk_check_category: json['fk_check_category'],
        fk_check_type: json['fk_check_type'],
        fk_check_item: json['fk_check_item'],
        fk_check_output: json['fk_check_output'],
        fk_process_estimation: json['fk_process_estimation'],
        fk_process_output: json['fk_process_output'],
        fk_script: json['fk_script']);
  }
}
