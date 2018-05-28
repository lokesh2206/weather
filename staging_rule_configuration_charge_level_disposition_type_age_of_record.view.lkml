view: staging_rule_configuration_charge_level_disposition_type_age_of_record {
  sql_table_name: dbo.Staging_Rule_Configuration_Charge_Level_Disposition_Type_AgeOfRecord ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
  }

  dimension: age_of_record {
    type: number
    sql: ${TABLE}.Age_Of_Record ;;
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

  dimension: rule_configuration_charge_level_disposition_age_of_record_id {
    type: number
    sql: ${TABLE}.Rule_Configuration_Charge_Level_Disposition_AgeOfRecord_Id ;;
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
      rule_configuration.rule_configuration_id,
      disposition_type.disposition_type_id,
      charge_level.charge_level_id,
      users.user_id,
      users.name,
      change_log.change_log_id
    ]
  }
}
