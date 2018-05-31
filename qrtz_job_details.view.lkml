view: qrtz_job_details {
  sql_table_name: dbo.QRTZ_JOB_DETAILS ;;

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: is_durable {
    type: string
    sql: ${TABLE}.IS_DURABLE ;;
  }

  dimension: is_nonconcurrent {
    type: string
    sql: ${TABLE}.IS_NONCONCURRENT ;;
  }

  dimension: is_update_data {
    type: string
    sql: ${TABLE}.IS_UPDATE_DATA ;;
  }

  dimension: job_class_name {
    type: string
    sql: ${TABLE}.JOB_CLASS_NAME ;;
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

  dimension: requests_recovery {
    type: string
    sql: ${TABLE}.REQUESTS_RECOVERY ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.SCHED_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [sched_name, job_name, job_class_name]
  }
}
