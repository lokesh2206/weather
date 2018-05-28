view: missing_reporting_param {
  sql_table_name: dbo.Missing_Reporting_Param ;;

  dimension: missing_reporting_param_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Missing_Reporting_Param_Id ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.createdAt ;;
  }

  dimension: crim_case_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Crim_Case_Id ;;
  }

  dimension: crim_charge_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Crim_Charge_Id ;;
  }

  dimension: new_request {
    type: string
    sql: ${TABLE}.newRequest ;;
  }

  dimension: product_category_reporting_param_id {
    type: number
    sql: ${TABLE}.Product_Category_Reporting_Param_Id ;;
  }

  dimension: screening_result_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Screening_Result_Id ;;
  }

  dimension: sentence_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Sentence_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      missing_reporting_param_id,
      screening_result.screening_result_id,
      screening_result.machine_name,
      screening_result.is_common_name,
      crim_case.crim_case_id,
      crim_charge.crim_charge_id,
      sentence.sentence_id
    ]
  }
}
