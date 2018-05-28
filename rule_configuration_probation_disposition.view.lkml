view: rule_configuration_probation_disposition {
  sql_table_name: dbo.Rule_Configuration_Probation_Disposition ;;

  dimension: rule_configuration_probation_disposition_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Rule_Configuration_Probation_Disposition_Id ;;
  }

  dimension: disposition_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Disposition_Type_id ;;
  }

  dimension: probation_status_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Probation_Status_Id ;;
  }

  dimension: rule_configuration_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Configuration_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      rule_configuration_probation_disposition_id,
      rule_configuration.rule_configuration_id,
      disposition_type.disposition_type_id,
      probation_status.probation_status_id,
      probation_status.probation_status_name,
      audit_rule_configuration_probation_disposition.count,
      staging_rule_configuration_probation_disposition.count
    ]
  }
}
