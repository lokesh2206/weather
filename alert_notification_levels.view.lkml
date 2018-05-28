view: alert_notification_levels {
  sql_table_name: dbo.Alert_Notification_Levels ;;

  dimension: alert_notification_level_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Alert_Notification_Level_Id ;;
  }

  dimension: alerts_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Alerts_Type_Id ;;
  }

  dimension: notification_sent {
    type: string
    sql: ${TABLE}.Notification_Sent ;;
  }

  dimension_group: notification_sent {
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
    sql: ${TABLE}.Notification_Sent_Time ;;
  }

  dimension: notifier_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Notifier_Id ;;
  }

  measure: count {
    type: count
    drill_fields: [alert_notification_level_id, alerts_type.alerts_type_id, notifier.notifier_id, notifier.notifier_name]
  }
}
