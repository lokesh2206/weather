view: qrtz_blob_triggers {
  sql_table_name: dbo.QRTZ_BLOB_TRIGGERS ;;

  dimension: blob_data {
    type: string
    sql: ${TABLE}.BLOB_DATA ;;
  }

  dimension: sched_name {
    type: string
    sql: ${TABLE}.SCHED_NAME ;;
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
