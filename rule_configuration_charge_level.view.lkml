view: rule_configuration_charge_level {
  sql_table_name: dbo.Rule_Configuration_Charge_Level ;;

  dimension: rule_configuration_charge_level_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Rule_Configuration_Charge_Level_id ;;
  }

  dimension: charge_level_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Charge_Level_id ;;
  }

  dimension: rule_configuration_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Configuration_id ;;
  }

  measure: count {
    type: count
    drill_fields: [rule_configuration_charge_level_id, rule_configuration.rule_configuration_id, charge_level.charge_level_id, audit_rule_configuration_charge_level.count, staging_rule_configuration_charge_level.count]
  }
}
