view: qrtz_triggers {
  sql_table_name: dbo.QRTZ_TRIGGERS ;;

  dimension: calendar_name {
    type: string
    sql: ${TABLE}.CALENDAR_NAME ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: end_time {
    type: number
    sql: ${TABLE}.END_TIME ;;
  }

  dimension: job_data {
    type: string
    sql: ${TABLE}.JOB_DATA ;;
  }

  dimension: job_group {
    type: string
    sql: ${TABLE}.JOB_GROUP ;;
  }

  dimension: job_name {
    type: string
    sql: ${TABLE}.JOB_NAME ;;
  }

  dimension: misfire_instr {
    type: number
    sql: ${TABLE}.MISFIRE_INSTR ;;
  }

  dimension: next_fire_time {
    type: number
    sql: ${TABLE}.NEXT_FIRE_TIME ;;
  }

  dimension: prev_fire_time {
    type: number
    sql: ${TABLE}.PREV_FIRE_TIME ;;
  }

  dimension: priority {
    type: number
    sql: ${TABLE}.PRIORITY ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.SCHED_NAME ;;
  }

  dimension: start_time {
    type: number
    sql: ${TABLE}.START_TIME ;;
  }

  dimension: trigger_group {
    type: string
    sql: ${TABLE}.TRIGGER_GROUP ;;
  }

  dimension: trigger_name {
    type: string
    sql: ${TABLE}.TRIGGER_NAME ;;
  }

  dimension: trigger_state {
    type: string
    sql: ${TABLE}.TRIGGER_STATE ;;
  }

  dimension: trigger_type {
    type: string
    sql: ${TABLE}.TRIGGER_TYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [sched_name, trigger_name, job_name, calendar_name]
  }
}
