view: qrtz_paused_trigger_grps {
  sql_table_name: dbo.QRTZ_PAUSED_TRIGGER_GRPS ;;

  dimension: sched_name {
    type: string
    sql: ${TABLE}.SCHED_NAME ;;
  }

  dimension: trigger_group {
    type: string
    sql: ${TABLE}.TRIGGER_GROUP ;;
  }

  measure: count {
    type: count
    drill_fields: [sched_name]
  }
}
