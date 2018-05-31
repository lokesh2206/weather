view: audit_rule_configuration_disposition_type {
  sql_table_name: dbo.Audit_Rule_Configuration_Disposition_Type ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
  }

  dimension: change_log_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Change_Log_Id ;;
  }

  dimension: disposition_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Disposition_Type_id ;;
  }

  dimension: rule_configuration_disposition_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Configuration_DispositionType_Id ;;
  }

  dimension: rule_configuration_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Configuration_Id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.User_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      rule_configuration_disposition_type.rule_configuration_disposition_type_id,
      disposition_type.disposition_type_id,
      rule_configuration.rule_configuration_id,
      users.user_id,
      users.name,
      change_log.change_log_id
    ]
  }
}
