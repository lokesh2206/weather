view: probation_status {
  sql_table_name: dbo.Probation_Status ;;

  dimension: probation_status_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Probation_Status_Id ;;
  }

  dimension: probation_status_name {
    type: string
    sql: ${TABLE}.Probation_Status_Name ;;
  }

  dimension: probation_status_value {
    type: string
    sql: ${TABLE}.Probation_Status_Value ;;
  }

  measure: count {
    type: count
    drill_fields: [probation_status_id, probation_status_name, audit_rule_configuration_probation_disposition.count, rule_configuration_probation_disposition.count, staging_rule_configuration_probation_disposition.count]
  }
}
