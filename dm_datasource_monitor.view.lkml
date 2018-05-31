view: dm_datasource_monitor {
  sql_table_name: dbo.DM_Datasource_Monitor ;;

  dimension: dm_datasource_monitor_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.DM_Datasource_Monitor_Id ;;
  }

  dimension: data_source_id {
    type: number
    sql: ${TABLE}.DataSource_Id ;;
  }

  dimension: data_source_status_id {
    type: number
    sql: ${TABLE}.DataSource_Status_Id ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.End_Time ;;
  }

  dimension_group: last_modified {
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
    sql: ${TABLE}.Last_Modified_Time ;;
  }

  dimension: monitoring_status {
    type: string
    sql: ${TABLE}.Monitoring_Status ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.Start_Time ;;
  }

  measure: count {
    type: count
    drill_fields: [dm_datasource_monitor_id, dm_datasource_monitor_request.count]
  }
}
