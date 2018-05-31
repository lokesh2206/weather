view: rule_configuration_charge_level_disposition_type_age_of_record {
  sql_table_name: dbo.Rule_Configuration_Charge_Level_Disposition_Type_AgeOfRecord ;;

  dimension: age_of_record {
    type: number
    sql: ${TABLE}.Age_Of_Record ;;
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

  measure: count {
    type: count
    drill_fields: [rule_configuration.rule_configuration_id, disposition_type.disposition_type_id, charge_level.charge_level_id]
  }
}
