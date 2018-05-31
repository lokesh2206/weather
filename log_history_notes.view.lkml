view: log_history_notes {
  sql_table_name: dbo.LogHistoryNotes ;;

  dimension: log_history_notes_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.logHistoryNotesID ;;
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
    sql: ${TABLE}.created_At ;;
  }

  dimension: history_notes_description {
    type: string
    sql: ${TABLE}.historyNotes_Description ;;
  }

  dimension: screening_result_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Screening_Result_id ;;
  }

  dimension: smart_data_status_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.smartData_Status_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      log_history_notes_id,
      smart_data_status.smart_data_status_id,
      smart_data_status.status_name,
      screening_result.screening_result_id,
      screening_result.machine_name,
      screening_result.is_common_name
    ]
  }
}
