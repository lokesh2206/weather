view: qrtz_simple_triggers {
  sql_table_name: dbo.QRTZ_SIMPLE_TRIGGERS ;;

  dimension: repeat_count {
    type: number
    sql: ${TABLE}.REPEAT_COUNT ;;
  }

  dimension: repeat_interval {
    type: number
    sql: ${TABLE}.REPEAT_INTERVAL ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.SCHED_NAME ;;
  }

  dimension: times_triggered {
    type: number
    sql: ${TABLE}.TIMES_TRIGGERED ;;
  }

  dimension: trigger_group {
    type: string
    sql: ${TABLE}.TRIGGER_GROUP ;;
  }

  dimension: trigger_name {
    type: string
    sql: ${TABLE}.TRIGGER_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [sched_name, trigger_name]
  }
}
