view: qrtz_cron_triggers {
  sql_table_name: dbo.QRTZ_CRON_TRIGGERS ;;

  dimension: cron_expression {
    type: string
    sql: ${TABLE}.CRON_EXPRESSION ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.SCHED_NAME ;;
  }

  dimension: time_zone_id {
    type: string
    sql: ${TABLE}.TIME_ZONE_ID ;;
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
