view: monitoring_status {
  sql_table_name: dbo.Monitoring_Status ;;

  dimension: monitoring_status_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Monitoring_Status_id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.Description ;;
  }

  dimension: status_name {
    type: string
    sql: ${TABLE}.Status_name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }

  measure: count {
    type: count
    drill_fields: [monitoring_status_id, status_name]
  }
}
