view: qrtz_locks {
  sql_table_name: dbo.QRTZ_LOCKS ;;

  dimension: lock_name {
    type: string
    sql: ${TABLE}.LOCK_NAME ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.SCHED_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [sched_name, lock_name]
  }
}
