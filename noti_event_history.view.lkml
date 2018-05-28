view: noti_event_history {
  sql_table_name: dbo.Noti_Event_History ;;

  dimension_group: completed {
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
    sql: ${TABLE}.Completed_At ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: event_history_id {
    type: number
    sql: ${TABLE}.EventHistory_Id ;;
  }

  dimension: event_id {
    type: number
    sql: ${TABLE}.Event_Id ;;
  }

  dimension_group: initiated {
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
    sql: ${TABLE}.Initiated_At ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
