view: smart_data_status {
  sql_table_name: dbo.SmartData_Status ;;

  dimension: smart_data_status_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.SmartData_Status_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: status_name {
    type: string
    sql: ${TABLE}.Status_name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [smart_data_status_id, status_name, log_history_notes.count, screening_result.count]
  }
}
