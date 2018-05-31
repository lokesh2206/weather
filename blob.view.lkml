view: blob {
  sql_table_name: dbo.Blob ;;

  dimension: blob_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Blob_Id ;;
  }

  dimension: api_id {
    type: string
    sql: ${TABLE}.Api_Id ;;
  }

  dimension: blob_type {
    type: string
    sql: ${TABLE}.Blob_Type ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.Created_At ;;
  }

  dimension: etag {
    type: string
    sql: ${TABLE}.ETag ;;
  }

  dimension: screening_result_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Screening_Result_Id ;;
  }

  dimension_group: ttl {
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
    sql: ${TABLE}.TTL ;;
  }

  measure: count {
    type: count
    drill_fields: [blob_id, screening_result.screening_result_id, screening_result.machine_name, screening_result.is_common_name]
  }
}
