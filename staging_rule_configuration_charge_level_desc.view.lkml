view: staging_rule_configuration_charge_level_desc {
  sql_table_name: dbo.Staging_Rule_Configuration_Charge_Level_Desc ;;

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

  dimension: charge_description_id {
    type: number
    sql: ${TABLE}.Charge_Description_Id ;;
  }

  dimension: charge_level_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Charge_Level_Id ;;
  }

  dimension: rule_configuration_charge_level_desc_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Configuration_Charge_Level_Desc_Id ;;
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
      rule_configuration_charge_level_desc.rule_configuration_charge_level_desc_id,
      rule_configuration.rule_configuration_id,
      charge_level.charge_level_id,
      users.user_id,
      users.name,
      change_log.change_log_id
    ]
  }
}
