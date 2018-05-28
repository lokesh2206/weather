view: quartz_history_log {
  sql_table_name: dbo.Quartz_History_Log ;;

  dimension: quartz_history_log_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Quartz_History_Log_Id ;;
  }

  dimension_group: finished {
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
    sql: ${TABLE}.Finished_At ;;
  }

  dimension: machine_name {
    type: string
    sql: ${TABLE}.Machine_Name ;;
  }

  dimension_group: started {
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
    sql: ${TABLE}.Started_At ;;
  }

  measure: count {
    type: count
    drill_fields: [quartz_history_log_id, machine_name]
  }
}
