view: dm_sample_store {
  sql_table_name: dbo.DM_Sample_Store ;;

  dimension: dm_sample_store_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DM_Sample_Store_ID ;;
  }

  dimension: active {
    type: string
    sql: ${TABLE}.Active ;;
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
    sql: ${TABLE}.CreatedAt ;;
  }

  dimension: data_source_id {
    type: number
    sql: ${TABLE}.DataSource_Id ;;
  }

  dimension_group: last_run {
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
    sql: ${TABLE}.LastRunTime ;;
  }

  dimension: match_score {
    type: number
    sql: ${TABLE}.Match_Score ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.ModifiedAt ;;
  }

  dimension: screening_result_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Screening_Result_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      dm_sample_store_id,
      screening_result.screening_result_id,
      screening_result.machine_name,
      screening_result.is_common_name,
      dm_datasource_monitor_request.count,
      dm_sample_search_param.count
    ]
  }
}
