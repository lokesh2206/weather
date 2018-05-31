view: qrtz_calendars {
  sql_table_name: dbo.QRTZ_CALENDARS ;;

  dimension: calendar {
    type: string
    sql: ${TABLE}.CALENDAR ;;
  }

  dimension: calendar_name {
    type: string
    sql: ${TABLE}.CALENDAR_NAME ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.SCHED_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [sched_name, calendar_name]
  }
}
