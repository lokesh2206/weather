view: crim_case {
  sql_table_name: dbo.Crim_Case ;;

  dimension: crim_case_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Crim_case_id ;;
  }

  dimension: actual_disposition_description {
    type: string
    sql: ${TABLE}.Actual_Disposition_Description ;;
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
    sql: ${TABLE}.Arrest_Date ;;
  }

  dimension: case_nbr {
    type: string
    sql: ${TABLE}.Case_NBR ;;
  }

  dimension: charge_level_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Charge_Level_id ;;
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

  dimension: disposition_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Disposition_Type_id ;;
  }

  dimension: is_reported_earlier {
    type: string
    sql: ${TABLE}.Is_Reported_Earlier ;;
  }

  dimension: is_score_complete {
    type: string
    sql: ${TABLE}.Is_Score_Complete ;;
  }

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_ID ;;
  }

  dimension: jurisdiction_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_Type_Id ;;
  }

  dimension: known_result {
    type: number
    sql: ${TABLE}.Known_Result ;;
  }

  dimension: needs_pii_review {
    type: string
    sql: ${TABLE}.Needs_PII_REVIEW ;;
  }

  dimension: rule_decision {
    type: string
    sql: ${TABLE}.Rule_Decision ;;
  }

  dimension: sanitizied_disposition_description_id {
    type: number
    sql: ${TABLE}.Sanitizied_Disposition_Description_id ;;
  }

  dimension: screening_result_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Screening_Result_id ;;
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
      crim_case_id,
      screening_result.screening_result_id,
      screening_result.machine_name,
      screening_result.is_common_name,
      jurisdiction.jurisdiction_id,
      jurisdiction_type.jurisdiction_type_id,
      charge_level.charge_level_id,
      disposition_type.disposition_type_id,
      crim_case_missing_product_category_reporting_param.count,
      crim_charge.count,
      missing_reporting_param.count
    ]
  }
}
