view: dm_datasource_monitor_request {
  sql_table_name: dbo.DM_Datasource_Monitor_Request ;;

  dimension: dm_datasource_monitor_request_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DM_Datasource_Monitor_Request_ID ;;
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

  dimension: dm_datasource_monitor_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DM_Datasource_Monitor_ID ;;
  }

  dimension: dm_sample_store_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.DM_Sample_Store_ID ;;
  }

  dimension: monitoring_status {
    type: string
    sql: ${TABLE}.Monitoring_Status ;;
  }

  dimension_group: received {
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
    sql: ${TABLE}.ReceivedAt ;;
  }

  dimension: resend {
    type: string
    sql: ${TABLE}.Resend ;;
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
      dm_datasource_monitor_request_id,
      dm_sample_store.dm_sample_store_id,
      screening_result.screening_result_id,
      screening_result.machine_name,
      screening_result.is_common_name,
      dm_datasource_monitor.dm_datasource_monitor_id,
      dm_datasource_monitor_request_search_param.count
    ]
  }
}
