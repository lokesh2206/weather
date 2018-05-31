view: qrtz_scheduler_state {
  sql_table_name: dbo.QRTZ_SCHEDULER_STATE ;;

  dimension: checkin_interval {
    type: number
    sql: ${TABLE}.CHECKIN_INTERVAL ;;
  }

  dimension: instance_name {
    type: string
    sql: ${TABLE}.INSTANCE_NAME ;;
  }

  dimension: last_checkin_time {
    type: number
    sql: ${TABLE}.LAST_CHECKIN_TIME ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.SCHED_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [sched_name, instance_name]
  }
}
