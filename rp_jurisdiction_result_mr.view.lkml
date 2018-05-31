view: rp_jurisdiction_result_mr {
  sql_table_name: dbo.RP_Jurisdiction_Result_MR ;;

  dimension: jurisdiction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Jurisdiction_ID ;;
  }

  dimension: jurisdiction_result_mr_id {
    type: number
    sql: ${TABLE}.Jurisdiction_Result_MR_Id ;;
  }

  dimension: screening_result_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Screening_Result_Id ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}.Timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: [jurisdiction.jurisdiction_id, screening_result.screening_result_id, screening_result.machine_name, screening_result.is_common_name]
  }
}
