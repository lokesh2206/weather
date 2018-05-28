view: alert_notifications {
  sql_table_name: dbo.Alert_Notifications ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: alert_description {
    type: string
    sql: ${TABLE}.Alert_Description ;;
  }

  dimension: alerts_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Alerts_Type_Id ;;
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
    sql: ${TABLE}.Created_Date ;;
  }

  dimension: is_active {
    type: string
    sql: ${TABLE}.Is_Active ;;
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

  dimension: notificaton_sent {
    type: string
    sql: ${TABLE}.Notificaton_Sent ;;
  }

  measure: count {
    type: count
    drill_fields: [id, alerts_type.alerts_type_id]
  }
}
