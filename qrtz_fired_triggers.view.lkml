view: qrtz_fired_triggers {
  sql_table_name: dbo.QRTZ_FIRED_TRIGGERS ;;

  dimension: entry_id {
    type: string
    sql: ${TABLE}.ENTRY_ID ;;
  }

  dimension: fired_time {
    type: number
    sql: ${TABLE}.FIRED_TIME ;;
  }

  dimension: instance_name {
    type: string
    sql: ${TABLE}.INSTANCE_NAME ;;
  }

  dimension: is_nonconcurrent {
    type: string
    sql: ${TABLE}.IS_NONCONCURRENT ;;
  }

  dimension: job_group {
    type: string
    sql: ${TABLE}.JOB_GROUP ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.JOB_NAME ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.PRIORITY ;;
  }

  dimension: requests_recovery {
    type: string
    sql: ${TABLE}.REQUESTS_RECOVERY ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.SCHED_NAME ;;
  }

  dimension: sched_time {
    type: number
    sql: ${TABLE}.SCHED_TIME ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.STATE ;;
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
    drill_fields: [sched_name, trigger_name, instance_name, job_name]
  }
}
