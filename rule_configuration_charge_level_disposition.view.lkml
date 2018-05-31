view: rule_configuration_charge_level_disposition {
  sql_table_name: dbo.Rule_Configuration_Charge_Level_Disposition ;;

  dimension: rule_configuration_charge_level_disposition_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Rule_Configuration_Charge_Level_Disposition_Id ;;
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
      rule_configuration_charge_level_disposition_id,
      rule_configuration.rule_configuration_id,
      disposition_type.disposition_type_id,
      charge_level.charge_level_id,
      audit_rule_configuration_charge_level_disposition.count,
      staging_rule_configuration_charge_level_disposition.count
    ]
  }
}
