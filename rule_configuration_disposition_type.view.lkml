view: rule_configuration_disposition_type {
  sql_table_name: dbo.Rule_Configuration_Disposition_Type ;;

  dimension: rule_configuration_disposition_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Rule_Configuration_DispositionType_Id ;;
  }

  dimension: disposition_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Disposition_Type_id ;;
  }

  dimension: rule_configuration_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Configuration_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [rule_configuration_disposition_type_id, disposition_type.disposition_type_id, rule_configuration.rule_configuration_id, audit_rule_configuration_disposition_type.count, staging_rule_configuration_disposition_type.count]
  }
}
