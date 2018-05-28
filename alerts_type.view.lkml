view: alerts_type {
  sql_table_name: dbo.Alerts_Type ;;

  dimension: alerts_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Alerts_Type_Id ;;
  }

  dimension: alerts_type {
    type: string
    sql: ${TABLE}.AlertsType ;;
  }

  measure: count {
    type: count
    drill_fields: [alerts_type_id, alert_notification_levels.count, alert_notifications.count]
  }
}
