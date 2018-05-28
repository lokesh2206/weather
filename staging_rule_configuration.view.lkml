view: staging_rule_configuration {
  sql_table_name: dbo.Staging_Rule_Configuration ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
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

  dimension: change_log_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Change_Log_Id ;;
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

  dimension: is_configure {
    type: string
    sql: ${TABLE}.isConfigure ;;
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

  dimension: rule_configuration_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Rule_Configuration_id ;;
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
      rule_set.rule_set_id,
      rule_set.name,
      rule_master.rule_master_id,
      rule_master.rule_name,
      disposition_type.disposition_type_id,
      users.user_id,
      users.name,
      change_log.change_log_id
    ]
  }
}
