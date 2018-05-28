view: audit_rule_configuration_charge_level_disposition {
  sql_table_name: dbo.Audit_Rule_Configuration_Charge_Level_Disposition ;;

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

  dimension: charge_level_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Charge_Level_Id ;;
  }

  dimension: disposition_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Disposition_Type_id ;;
  }

  dimension: rule_configuration_charge_level_disposition_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Configuration_Charge_Level_Disposition_Id ;;
  }

  dimension: rule_configuration_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Configuration_id ;;
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
      rule_configuration_charge_level_disposition.rule_configuration_charge_level_disposition_id,
      rule_configuration.rule_configuration_id,
      disposition_type.disposition_type_id,
      charge_level.charge_level_id,
      users.user_id,
      users.name,
      change_log.change_log_id
    ]
  }
}
