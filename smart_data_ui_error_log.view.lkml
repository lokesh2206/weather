view: smart_data_ui_error_log {
  sql_table_name: dbo.SmartDataUI_ErrorLog ;;

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
    sql: ${TABLE}.Created_Date ;;
  }

  dimension: error {
    type: string
    sql: ${TABLE}.Error ;;
  }

  dimension: error_log_id {
    type: number
    sql: ${TABLE}.ErrorLog_Id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
