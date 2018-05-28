view: rule_configuration {
  sql_table_name: dbo.Rule_Configuration ;;

  dimension: rule_configuration_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Rule_Configuration_id ;;
  }

  dimension: active_warrant {
    type: string
    sql: ${TABLE}.Active_Warrant ;;
  }

  dimension: age_of_arrest {
    type: number
    sql: ${TABLE}.Age_Of_Arrest ;;
  }

  dimension: age_of_record {
    type: number
    sql: ${TABLE}.Age_Of_Record ;;
  }

  dimension: age_of_sentence {
    type: number
    sql: ${TABLE}.Age_Of_Sentence ;;
  }

  dimension: age_of_sentence_probation {
    type: number
    sql: ${TABLE}.Age_Of_Sentence_Probation ;;
  }

  dimension: age_of_warrant {
    type: number
    sql: ${TABLE}.Age_Of_Warrant ;;
  }

  dimension: age_on_offense_date {
    type: number
    sql: ${TABLE}.Age_On_Offense_date ;;
  }

  dimension: case_type {
    type: string
    sql: ${TABLE}.Case_Type ;;
  }

  dimension: current_age {
    type: number
    sql: ${TABLE}.Current_Age ;;
  }

  dimension: disposition_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Disposition_Type_Id ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Modified_Date ;;
  }

  dimension: monetory_value {
    type: number
    sql: ${TABLE}.Monetory_Value ;;
  }

  dimension: probation_active {
    type: string
    sql: ${TABLE}.Probation_Active ;;
  }

  dimension: rule_master_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Master_id ;;
  }

  dimension: rule_set_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.RuleSet_id ;;
  }

  dimension: salary_limit {
    type: number
    sql: ${TABLE}.Salary_Limit ;;
  }

  dimension: sentence_type {
    type: string
    sql: ${TABLE}.Sentence_Type ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      rule_configuration_id,
      rule_set.rule_set_id,
      rule_set.name,
      rule_master.rule_master_id,
      rule_master.rule_name,
      disposition_type.disposition_type_id,
      audit_rule_configuration.count,
      audit_rule_configuration_charge_category_desc.count,
      audit_rule_configuration_charge_desc.count,
      audit_rule_configuration_charge_level.count,
      audit_rule_configuration_charge_level_desc.count,
      audit_rule_configuration_charge_level_disposition.count,
      audit_rule_configuration_charge_level_disposition_type_age_of_record.count,
      audit_rule_configuration_county.count,
      audit_rule_configuration_disposition_desc.count,
      audit_rule_configuration_disposition_type.count,
      audit_rule_configuration_probation_disposition.count,
      rule_configuration_charge_category_desc.count,
      rule_configuration_charge_desc.count,
      rule_configuration_charge_level.count,
      rule_configuration_charge_level_desc.count,
      rule_configuration_charge_level_disposition.count,
      rule_configuration_charge_level_disposition_type_age_of_record.count,
      rule_configuration_county.count,
      rule_configuration_disposition_desc.count,
      rule_configuration_disposition_type.count,
      rule_configuration_probation_disposition.count,
      staging_rule_configuration.count,
      staging_rule_configuration_charge_category_desc.count,
      staging_rule_configuration_charge_desc.count,
      staging_rule_configuration_charge_level.count,
      staging_rule_configuration_charge_level_desc.count,
      staging_rule_configuration_charge_level_disposition.count,
      staging_rule_configuration_charge_level_disposition_type_age_of_record.count,
      staging_rule_configuration_county.count,
      staging_rule_configuration_disposition_desc.count,
      staging_rule_configuration_disposition_type.count,
      staging_rule_configuration_probation_disposition.count,
      vw_state_rules.count
    ]
  }
}
