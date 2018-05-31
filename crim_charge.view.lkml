view: crim_charge {
  sql_table_name: dbo.Crim_Charge ;;

  dimension: crim_charge_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Crim_Charge_Id ;;
  }

  dimension: actual_charge_description {
    type: string
    sql: ${TABLE}.Actual_Charge_Description ;;
  }

  dimension: actual_charge_level_id {
    type: number
    sql: ${TABLE}.Actual_Charge_Level_id ;;
  }

  dimension: actual_disposition_description {
    type: string
    sql: ${TABLE}.Actual_Disposition_Description ;;
  }

  dimension: actual_disposition_type_id {
    type: number
    sql: ${TABLE}.Actual_Disposition_Type_id ;;
  }

  dimension: age_of_disposition {
    type: number
    sql: ${TABLE}.Age_Of_Disposition ;;
  }

  dimension: age_of_record {
    type: number
    sql: ${TABLE}.Age_Of_Record ;;
  }

  dimension: age_of_sentence {
    type: number
    sql: ${TABLE}.Age_Of_Sentence ;;
  }

  dimension: aor_days {
    type: number
    sql: ${TABLE}.AOR_Days ;;
  }

  dimension_group: arrest {
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
    sql: ${TABLE}.Arrest_date ;;
  }

  dimension: charge_category_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Charge_Category_id ;;
  }

  dimension: charge_sanitization_level {
    type: string
    sql: ${TABLE}.Charge_Sanitization_Level ;;
  }

  dimension: cma_score {
    type: string
    sql: ${TABLE}.Cma_Score ;;
  }

  dimension_group: conviction {
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
    sql: ${TABLE}.Conviction_date ;;
  }

  dimension: crim_case_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Crim_case_id ;;
  }

  dimension_group: disposition {
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
    sql: ${TABLE}.Disposition_date ;;
  }

  dimension: disposition_sanitization_level {
    type: string
    sql: ${TABLE}.Disposition_Sanitization_Level ;;
  }

  dimension: is_probation_active {
    type: string
    sql: ${TABLE}.Is_Probation_Active ;;
  }

  dimension: is_reported_earlier {
    type: string
    sql: ${TABLE}.Is_Reported_Earlier ;;
  }

  dimension_group: next_court {
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
    sql: ${TABLE}.Next_Court_Date ;;
  }

  dimension_group: offense {
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
    sql: ${TABLE}.Offense_date ;;
  }

  dimension: rule_decision {
    type: string
    sql: ${TABLE}.Rule_Decision ;;
  }

  dimension: sanitized_charge_description_id {
    type: number
    sql: ${TABLE}.Sanitized_Charge_Description_Id ;;
  }

  dimension: sanitized_charge_level_id {
    type: number
    sql: ${TABLE}.Sanitized_Charge_Level_id ;;
  }

  dimension: sanitized_disposition_type_id {
    type: number
    sql: ${TABLE}.Sanitized_Disposition_Type_id ;;
  }

  dimension: statute_code {
    type: string
    sql: ${TABLE}.Statute_Code ;;
  }

  dimension: system_identifier {
    type: string
    sql: ${TABLE}.System_Identifier ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      crim_charge_id,
      crim_case.crim_case_id,
      charge_category.charge_category_id,
      charge_rule_history.count,
      crim_charge_missing_product_category_reporting_param.count,
      missing_reporting_param.count,
      sentence.count
    ]
  }
}
