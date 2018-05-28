view: bulk_upload_job_master {
  sql_table_name: dbo.BulkUploadJobMaster ;;

  dimension: bulk_upload_job_id {
    type: number
    sql: ${TABLE}.BulkUpload_JobId ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension_group: upload {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.UploadDate ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.UserId ;;
  }

  measure: count {
    type: count
    drill_fields: [users.user_id, users.name]
  }
}
