view: rule_master_config_status {
  sql_table_name: dbo.Rule_Master_Config_Status ;;

  dimension: rule_master_config_status_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Rule_Master_Config_Status_Id ;;
  }

  dimension: active_warrant {
    type: string
    sql: ${TABLE}.Active_Warrant ;;
  }

  dimension: age_of_arrest {
    type: string
    sql: ${TABLE}.Age_Of_Arrest ;;
  }

  dimension: age_of_record {
    type: string
    sql: ${TABLE}.Age_Of_Record ;;
  }

  dimension: age_of_sentence {
    type: string
    sql: ${TABLE}.Age_Of_Sentence ;;
  }

  dimension: age_of_warrant {
    type: string
    sql: ${TABLE}.Age_Of_Warrant ;;
  }

  dimension: age_on_offense_date {
    type: string
    sql: ${TABLE}.Age_On_Offense_date ;;
  }

  dimension: case_type {
    type: string
    sql: ${TABLE}.Case_Type ;;
  }

  dimension: charge_category {
    type: string
    sql: ${TABLE}.Charge_Category ;;
  }

  dimension: charge_description {
    type: string
    sql: ${TABLE}.Charge_Description ;;
  }

  dimension: charge_level {
    type: string
    sql: ${TABLE}.Charge_Level ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.County ;;
  }

  dimension: current_age {
    type: string
    sql: ${TABLE}.Current_Age ;;
  }

  dimension: display_type_is_validation {
    type: string
    sql: ${TABLE}.Display_Type_IsValidation ;;
  }

  dimension: disposition_type {
    type: string
    sql: ${TABLE}.Disposition_Type ;;
  }

  dimension: monetory_value {
    type: string
    sql: ${TABLE}.Monetory_Value ;;
  }

  dimension: no_config_values {
    type: string
    sql: ${TABLE}.No_Config_Values ;;
  }

  dimension: probation_active {
    type: string
    sql: ${TABLE}.Probation_Active ;;
  }

  dimension: rule_master_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Master_Id ;;
  }

  dimension: salary_limit {
    type: string
    sql: ${TABLE}.Salary_Limit ;;
  }

  dimension: sentence_type {
    type: string
    sql: ${TABLE}.Sentence_Type ;;
  }

  measure: count {
    type: count
    drill_fields: [rule_master_config_status_id, rule_master.rule_master_id, rule_master.rule_name]
  }
}
